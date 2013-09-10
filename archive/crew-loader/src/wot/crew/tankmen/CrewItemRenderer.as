/**
 * 
 * @author LEMAXHO
 */

//FOR HINA-ICHIGO
import wot.crew.tankmen.Crew;


class wot.crew.tankmen.CrewItemRenderer extends net.wargaming.tankmen.CrewItemRenderer
{
    
	function CrewItemRenderer()
    {
        super();
    }
	
    function configUI()
    {
        this.__set__dropdown("RecruitScrollingList");
        this.__set__itemRenderer("RecruitItemRenderer");
        constraints = new gfx.utils.Constraints(this, true);
        if (!_disableConstraints)
        {
            constraints.addElement(textField, gfx.utils.Constraints.ALL);
        }
		
        if (_autoSize)
        {
            sizeIsInvalid = true;
        }
		
        super.configUI();
		
        if (focusIndicator != null && !_focused && focusIndicator._totalFrames == 1)
        {
            focusIndicator._visible = false;
        }
		
        this.updateAfterStateChange();
        onMouseDownFunc = function (button, target)
		{
			if (Mouse.RIGHT == button)
			{
				this.close();
			}
			
			if (Mouse.RIGHT == button && this.hitTest(_root._xmouse, _root._ymouse, true))
			{
				var _loc3 = Mouse.getTopMostEntity();
				var _loc4 = false;
				//PARCOURIR LES PARENTS SUCCESSIFS POUR VERIFIER SI LE CLIC DROIT APPARTIENT A UNE SOUS ZONE DE MENU DU TANKISTE
				while (_loc3)
				{
					if (_loc3 == this)
					{
						_loc4 = true;
						break;
					} // end if
					_loc3 = _loc3._parent;
				}
				
				if (_loc4 && this.data.tankmanID > 0 && !this._disabled)
				{
					//CREATION DES ELEMS DU MENU CLIC DROIT
					var _loc5 = net.wargaming.managers.ContextMenuManager.__get__instance().show([["personalCase"], [net.wargaming.controls.ContextMenu.SEPARATE], ["tankmanUnload"], ["tankmanUnloadAll"], [net.wargaming.controls.ContextMenu.SEPARATE], ["dismiss"]], false, {id: this.data.tankmanID});
					_loc5.addEventListener("action", this, "onContextMenuAction");
				}
				//PREVOIR UN ELSE IF POUR APPELER LA CONCTION DE PLACEMENT AUTOMATIQUE DES TANKISTES
				//UNIQUEMENT SI PLACE EST VIDE
				else if(_loc4 && this.data.tankmanID==null && !this._disabled)
				{
					var shinku = net.wargaming.managers.ContextMenuManager.__get__instance().show([["PutOwnCrew"], [net.wargaming.controls.ContextMenu.SEPARATE], ["PutBestCrew"]], false, {id: this.data.tankmanID});
					shinku.addEventListener("action", this, "onPutRightCrewAction");
				}
			}
		};
		
		onMouseDown = onMouseDownFunc;
	
        this.addEventListener("click", this, "toggleMenu");
        onDragOverAux = handleDragOver;
        onDragOutAux = handleDragOut;
        onReleaseOutsideAux = handleReleaseOutside;
    }
	
	//SUISEISEKI
	function onPutRightCrewAction(args)
    {
        switch (args.id)
        {
            case "PutOwnCrew":
            {
				
				var theTankman:Array = SuigintouAdvice(Crew.listTankmen);
				
				for (var index in theTankman)
				{
					var tankiste:Object = theTankman[index];
					if (tankiste["compact"] != "")
					{
						//set tankman
						gfx.io.GameDelegate.call("tankmen.equipTankman", [tankiste["compact"], null, tankiste["slot"]]);
					}
				}
                break;
            } 
            case "PutBestCrew":
            {
				var theTankman:Array = SouseisekiAdvice(Crew.listTankmen);
				
				for (var index in theTankman)
				{
					var tankiste:Object = theTankman[index];
					if (tankiste["compact"] != "")
					{
						//set tankman
						gfx.io.GameDelegate.call("tankmen.equipTankman", [tankiste["compact"], null, tankiste["slot"]]);
					}
				}
                break;
            }
        }
    }
	
	// Sui advices you and gives a list of this tank's crew members
	function SuigintouAdvice(theCrew:Array):Array
	{
		// le tank actuel est identifie dans le dummy tankman de l'en tete
		var theTank:String = theCrew[0]["curVehicleName"];// is not null
		
		var bestTankmanList = new Array();
		
		for (var index:Object in theCrew)
		{
			var aSlot = theCrew[index];
			var theRecruits = aSlot["recruitList"];
			
			if (aSlot["inTank"]!=true)
			{
				for (var y in theRecruits)
				{
					var tnkmn = theRecruits[y];
					var tnkfinded = false;
					//verifier si objet est complet et si pas encore ete ajoute
					if (tnkmn["compact"] != null && !SouseisekiInArray(bestTankmanList,tnkmn))
					{
						//hypothese : il y a qu'un seul tankiste de ce type de char dans la caserne
						//et verif qu'il n'est pas deja dans le tank
						if (tnkmn["vehicleType"] == theTank && tnkmn["inTank"]== false)
						{
							tnkmn["slot"] = aSlot["slot"];
							bestTankmanList.push(tnkmn);
							tnkfinded = true;
						}
					}
					if(tnkfinded)
					{
						break;
					}
				}
			}
		}
		return bestTankmanList;
	}
	
	// Souseiseki gies you the most capable crew for this tank
	//RETURNS: an array with available crew fot this tank
	function SouseisekiAdvice(theCrew:Array):Array
	{
		//vehicleType
		var theTank:String = theCrew[0]["curVehicleName"];//is not null
		var tnkObj:Object = theCrew[0];
		
		var bestTankmanList = new Array();
		
		for (var index:Object in theCrew)
		{
			var aSlot = theCrew[index];
			var theRecruits = aSlot["recruitList"];
			if (aSlot["inTank"]!=true)//!=true car sinon valeur est null et pas false
			{
				var mostSuitable = null;// current best choice
				
				for (var y in theRecruits)
				{
					var tnkmn = theRecruits[y];	
					//verifier si objet complet et si pas encore ete ajoute
					if (tnkmn["compact"] != null && tnkmn["inTank"]== false && !SouseisekiInArray(bestTankmanList,tnkmn))
					{
						//current best choice
						//appel fonction de comparaison et choix qui va decider 
						//si oui ou non le tankman actuel est mieux qualifie que le precedent
						if (askShinku(mostSuitable, tnkmn, tnkObj))
						{
							mostSuitable = tnkmn;
						}
					}
				}
				if (mostSuitable != null)
				{
					mostSuitable["slot"] = aSlot["slot"];
					bestTankmanList.push(mostSuitable);
				}
			}
		}
		return bestTankmanList;
	}
	
	//Compares two tankman
	//best choice  current best candidate
	//actualCandidate : current candidate
	function askShinku(bestChoice:Object, actualCandidate:Object, theTank:Object):Boolean
	{
		var res:Boolean = false;
		
		//efficiencyLevel : niveau d'exp principal 50 - 100%
		//availableSkillsCount : nombre des skills disponibles  null - 1 - 2 ...
		//lastSkillLevel : niveau du dernier skill - a evaluer si le nombre des skills est egal entre les deux candidats
		
		//premier candidat rencontre
		if (bestChoice == null)
		{
			return true;
		}
		//sinon evaluation des deux candidats
		
		
		//CASE1 : type des candidats correspond au type du char
		var best = getPenality(bestChoice, theTank);
		var current = getPenality(actualCandidate, theTank);
		if (best > current)
		{
			return false;
		}
		else if (best == current)
		{
			//le skill standard est egal
			if (bestChoice["skills"].length > actualCandidate["skills"].length)
			{
				return false;
			}
			//bestChoice["skills"].length <= actualCandidate["skills"].length
			else
			{
				if (bestChoice["skills"].length < actualCandidate["skills"].length)
				{
					return true;
				}
				else
				{
					//bestChoice["skills"].length == actualCandidate["skills"].length
					if (bestChoice["lastSkillLevel"] < actualCandidate["lastSkillLevel"])
					{
						return true;
					}
				}
			}
		}
		else if(best < current)
		{
			return true;
		}
		
		return res;
	}
	
	//skill tankman penality
	//dummyTankman contient les donnees du tank en cours
	//dummyTankman : current tank's data
	//RETURNS: Tankman's efficiencyLevel - penality
	function getPenality(aTankman:Object, dummyTankman:Object)
	{
		var res = 0;
		
		if (aTankman["vehicleType"] == dummyTankman["curVehicleName"])
		{
			res = 0;
		}
		else 
		{
			//25% penality same tanktype but tank is different
			if(aTankman["tankType"] == dummyTankman["curVehicleType"])
			{
				if (dummyTankman["vehicleElite"] == true)
				{
					res = 0;
				}
				else 
				{
					res = ((aTankman["efficiencyLevel"] /100) * 25);
				}
			}
			//TYPE DIFFERENT PENALITE 50%
			//tankType different
			else 
			{
				res = ((aTankman["efficiencyLevel"] / 100) * 50);
			}
		}
		return aTankman["efficiencyLevel"] - res;
	}
	
	//verifie si l'objet tankman est present dans la liste
	//controle des tankmanID des objects
	function SouseisekiInArray(theList:Array, elem:Object):Boolean
	{
		for (var index in theList)
		{
			if (theList[index]["tankmanID"] == elem["tankmanID"])
			{
				//on sort, doublon trouve
				return true;
			}
		}
		return false;
	}
	
	
    function handleStageClick(event)
    {
		super.handleStageClick(event);
        this.onMouseDownFunc(event);
    } 
	
    function close()
    {
        if (!isOpen || closeOnlyClickItem && !itemClicked)
        {
            return;
        } // end if
        isOpen = false;
        if (_dropdown == null)
        {
            return;
        } // end if
        _dropdown.visible = false;
        onMouseDown = onMouseDownFunc;
        this.__set__selected(this.__set__focused(false));
    }
	
	
    function toString()
    {
        return ("[Scaleform CrewItemRenderer " + _name + "]");
    } 
	
} 
