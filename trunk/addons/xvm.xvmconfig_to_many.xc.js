/******************************************************************************
      ������ ��� �������� ������� XVM.xvmconf ��� ������ XVM-4.0.0+
      Automatic conversion XVM.xvmconf to the new format XVM-4.0.0+

      ���������� (instructions):
      http://www.koreanrandom.com/forum/topic/4643-
******************************************************************************/

// ������ �������
var script_version = "9.7";

// ������ �������� ������
var sections = [    // ������� ������ ����� �� ������
                    '"battle"',
                    '"markers"',
                    '"iconset"',
                    '"login"',
                    '"vehicleNames"',
                    '"turretMarkers"',
                    '"texts"',
                    '"statisticForm"',
                    '"playersPanel"',
                    '"finalStatistic"',
                    '"battleLoading"',
                    '"captureBar"',
                    '"hitLog"',
                    '"hotkeys"',
                    '"fragCorrelation"',
                    '"expertPanel"',
                    '"hangar"',
                    '"userInfo"',
                    '"minimap"',
                    '"squad"',
                    '"colors"',
                    '"alpha"',
                    '"rating"'
                ];
// ������ ������������ ��� ������
var sectionsComments = {
    markers: {
        ru: '  // Маркеры над танками.',
        en: '  // Over-target markers.'
    },
    login: {
        ru: '  // Параметры экрана логина.',
        en: '  // Parameters for login screen.'
    },
    iconset: {
        ru: '  // Наборы иконок.',
        en: '  // Icon sets.'
    },
    vehicleNames: {
        ru: '  // Замена названий танков.',
        en: '  // Vehicle names mapping.'
    },
    turretMarkers: {
        ru: '  // Отображаемые строки {{turret}} маркера.',
        en: '  // {{turret}} marker display strings.'
    },
    texts: {
        ru: '  // Текстовые подстановки.',
        en: '  // Text substitutions.'
    },
    statisticForm: {
        ru: '  // Параметры окна статистики по клавише Tab.',
        en: '  // Parameters of the Battle Statistics form.'
    },
    playersPanel: {
        ru: '  // Параметры панелей игроков ("ушей").',
        en: '  // Parameters of the Players Panels ("ears").'
    },
    finalStatistic: {
        ru: '  // Параметры окна послебоевой статистики.',
        en: '  // Parameters of the After Battle Screen.'
    },
    battleLoading: {
        ru: '  // Параметры экрана загрузки боя.',
        en: '  // Parameters of the Battle Loading screen.'
    },
    captureBar: {
        ru: '  // Полоса захвата.',
        en: '  // Capture bar.'
    },
    hitLog: {
        ru: '  // Лог попаданий (счетчик своих попаданий).',
        en: '  // Hit log (my hits calculator).'
    },
    hotkeys: {
        ru: '  // Специальные горячие клавиши XVM.',
        en: '  // Special XVM hotkeys.'
    },
    battle: {
        ru: '  // Общие параметры боевого интерфейса.',
        en: '  // General parameters for the battle interface.'
    },
    fragCorrelation: {
        ru: '  // Панель счёта в бою.',
        en: '  // Frag counter panel.'
    },
    expertPanel: {
        ru: '  // Внутриигровая панель критов от навыка "эксперт".',
        en: '  // Ingame crits panel by "expert" skill.'
    },
    hangar: {
        ru: '  // Параметры ангара.',
        en: '  // Parameters for hangar.'
    },
    userInfo: {
        ru: '  // Параметры окна достижений.',
        en: '  // Parameters for userinfo window.'
    },
    minimap: {
        ru: '  // Миникарта.',
        en: '  // Minimap.'
    },
    squad: {
        ru: '  // Параметры окна взвода.',
        en: '  // Parameters for squad window.'
    },
    colors: {
        ru: '  // Настройки цветов.',
        en: '  // Color settings.'
    },
    alpha: {
        ru: '  // Настройки динамической прозрачности.',
        en: '  // Options for dynamic transparency.'
    },
    rating: {
        ru: '  // Блок управлением статистикой (только с xvm-stat).',
        en: '  // Options for player statistics (only with xvm-stat).'
    },
    elements: {
        ru: '  // Блок управлением статистикой (только с xvm-stat).',
        en: '  // Options for player statistics (only with xvm-stat).'
    },
    minimapCircles: {
        ru: '  // Круги на миникарте.',
        en: '  // Minimap circles.'
    },
    minimapLines: {
        ru: '  // Линии на миникарте.',
        en: '  // Minimap lines.'
    },
    minimapLabels: {
        ru: '  // Надписи на миникарте.',
        en: '  // Minimap labels.'
    }
}

var regexpOpen = /{/g;
var regexpClose = /}/g;
var openBr = "{";
var closeBr = "}";
	
// ���������� ���� �������
var reg = WScript.CreateObject('WScript.Shell');
var Rus=reg.RegRead('HKLM\\SYSTEM\\CurrentControlSet\\Control\\Nls\\Language\\Default');
if (Rus=="0419" || Rus=="0422" || Rus=="0423" || Rus=="043f")
    Rus = true;
else
    Rus = false;

var fso=WScript.CreateObject("Scripting.FileSystemObject");
var wsh = WScript.CreateObject("WScript.Shell");
// ���� �� ����� �� ��������
var path = WScript.ScriptFullName.substr(0, (WScript.ScriptFullName.length - WScript.ScriptName.length));

// ��� ����� ������� ���� �� ��������� ��� ������ XVM.xvmconf, ���� �������� ����
var file_input="XVM.xvmconf";
if (WScript.Arguments.length>0)
    file_input=WScript.Arguments(0);

// ��������� ������� ����� XVM.xvmconf
if (!fso.FileExists(file_input)) {
    if (Rus)
        WScript.Echo("���� \"XVM.xvmconf\" �� ������, ��������� ��� � ��� �� �����,\n ��� ���������� �� ������.\n\n���������: http://www.koreanrandom.com/forum/topic/4643-");
    else
        WScript.Echo("The file \"XVM.xvmconf\" not found, place it in the same folder,\n or drag'n'drop a config on the script.\n\nFor more information: http://www.koreanrandom.com/forum/topic/4643-");
    WScript.Quit();
}

// ������ ��� �������� ��������� �������
var inputConfig = fileToArray(file_input);

// ���� ��� ������ �������
var i = 0;
while (i < inputConfig.length && !isStart(inputConfig[i], '"author"'))
  i++;
if (i == inputConfig.length) {
    i = 0;
    while (i < inputConfig.length && inputConfig[i].indexOf('"author"') == -1)
      i++;
}
if (i == inputConfig.length) {
    var author = "autoscript by seriych";
} else {
    author = inputConfig[i].substring(inputConfig[i].indexOf('"author"'));
    author = author.substring(8);
    author = author.substring(author.indexOf("\"")+1);
    author = author.substring(0, author.indexOf("\""));
}

// �������� �������, ������� ������ ������������ � ������ ������, �� �������
author = author.replace( /[":*?><|&^\\\/]/g , ' ');

// ���� ����� � ������ ������ ����������, ������� ����� � �������� ��������
if (fso.FolderExists(path+author)) {
    i = 1;
    while (fso.FolderExists(path+author+" "+i))
        i++;
    author = author+" "+i;
}
fso.CreateFolder(path+author);

i = 0;
// ���� ������ ������ �������
var startIndex = 0;
while ( i < inputConfig.length && !isStart(inputConfig[i], '{'))
        i++;
if (i != inputConfig.length)
    startIndex = i;

/******************************************************************************/
/**               ���� ��������� ���� ������                                  */
/******************************************************************************/
for ( var j = 0; j < sections.length; j++) {
    i = 0;
    //���� ������, ���������� ������
    while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
        i++;
    // �������� �������� ������ ��� �������
    var section = sections[j].substring(0, sections[j].length-1);
    section = section.substring(1);
    // ���� �� �����, ����������� ��������
    if (i == inputConfig.length) {
        inputConfig.splice(startIndex+1, 0, sectionsComments[section].en, sectionsComments[section].ru, "  "+sections[j]+": {", "    ", "  },");
        i = startIndex + 3;
        // ���� ��������� ��� battle ��������, ���������� ���
        if (section == "minimap")
            var blankMinimap = true;
        if (section == "battle")
            var blankBattle = true;
    } else if (section == "minimap") {
        if ( diffBraces(inputConfig[i]) == 0)
            blankMinimap = true;
        else
            blankMinimap = false;
    } else if (section == "battle") {
        if ( diffBraces(inputConfig[i]) == 0)
            blankBattle = true;
        else
            blankBattle = false;
    }
    // ���� ����� ������� ��� �����������, ���������� ���������
    if (numberComments(i)==0) {
        inputConfig.splice(i, 0, sectionsComments[section].en, sectionsComments[section].ru);
        i = i + 2;
    }
    // ������� ���� ��� ������ ������
    if (section == "userInfo")
        section = "hangar";
    if (section == "fragCorrelation" || section == "expertPanel")
        section = "battle";
    var file_out = path+author+"\\"+section+".xc";
    var startString = "{";
    // ���� ����� hangar.xc ��� battle.xc ��� ����������, �� � ��� ���� ������� �������� � ���������� ����� ������
    if ((section == "hangar" || section == "battle") && fso.FileExists(file_out)) {
            delStrings(file_out);
            startString = "  },";
    }
    fout=fso.OpenTextFile(file_out,8,true,false);
    fout.WriteLine(startString);
    // �������� ������ � ����
    writeSection();
    // ��������� ������ � ��������� ����
    fout.WriteLine("  }");
    fout.WriteLine("}");
    fout.Close();
    // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
    var input_string = "  "+sections[j]+": ${\""+section+".xc\""+":"+sections[j]+"}";
    // ���� ������ �� ��������� � �������, ���� �������� �������
    if (inputConfig[i].indexOf(",") != -1 && inputConfig[i].lastIndexOf("}") < inputConfig[i].lastIndexOf(","))
        input_string = input_string + ",";
    // ���������� ����������� � ������� ���� �������
    inputConfig.splice(i, 1, input_string, "");
}

// ��������� �������� �������� ������� �� ������� � ���� @XVM.xc
file_out = path+author+"\\@XVM.xc";
fout=fso.OpenTextFile(file_out,2,true,false);
for ( i = 0; i < inputConfig.length; i++)
    fout.WriteLine(inputConfig[i]);
fout.WriteLine();
if (Rus)
    fout.WriteLine("//  Автоматически сгенерировано этим скриптом:");
else
    fout.WriteLine("//  Automatically generated by this script:");
fout.WriteLine("//  http://www.koreanrandom.com/forum/topic/4643-");
// ��������� ����
fout.Close();

/******************************************************************************/
/**               ������ ���������                                            */
/******************************************************************************/
if (fso.FileExists(path+author+"\\minimap.xc")) {
    // ������ �������� ������ ���������
    sections = [    // ������� ������ ����� �� ������
                        '"circles"',
                        '"labels"',
                        '"lines"'
               ];
    // ������ ��� �������� ��������� �������
    inputConfig = fileToArray(path+author+"\\minimap.xc");

    i = 0;
    // ���� ������ ������ minimap
    while ( i < inputConfig.length && !isStart(inputConfig[i], '"minimap"'))
            i++;
    if (i != inputConfig.length)
        startIndex = i;

    // ���� ��������� ���� ������
    for ( j = 0; j < sections.length; j++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
            i++;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = "minimap"+section.charAt(1).toUpperCase()+section.substring(2);
        // ���� �� �����, ����������� ��������
        if (i == inputConfig.length) {
            inputConfig.splice(startIndex+1, 0, sectionsComments[section].en, sectionsComments[section].ru, "  "+sections[j]+": {", "    ", "  },");
            i = startIndex+3;
            // ���� ��� �� ���������� �������, ���� ������-�������� ��������� ����
            var lastRef = false;
            if (j == sections.length-1 && blankMinimap)
                lastRef = true;
        }
        // ���� ����� ������� ��� �����������, ���������� ���������
        if (numberComments(i)==0) {
            inputConfig.splice(i, 0, sectionsComments[section].en, sectionsComments[section].ru);
            i = i + 2;
        }
        startIndex = i;
        // ������� ���� ��� ������ ������
        file_out = path+author+"\\"+section+".xc";
        fout=fso.OpenTextFile(file_out,2,true,false);
        fout.WriteLine("{");
        // �������� ������ � ����
        writeSection();
        // ��������� ������ � ��������� ����
        fout.WriteLine("  }");
        fout.WriteLine("}");
        fout.Close();
        // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
        input_string = "    "+sections[j]+": ${\""+section+".xc\""+":"+sections[j]+"}";
        // ���� ������ �� ��������� � �������, ���� �������� �������
        if (inputConfig[i].indexOf(",") != -1 && !lastRef)
            input_string = input_string + ",";
        // ���������� ����������� � ������� ���� �������
        inputConfig.splice(i, 1, input_string, "");
    }

    // ��������� �������� ������ minimap �� ������� � ���� minimap/minimap.xc
    file_out = path+author+"\\minimap.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++)
        fout.WriteLine(inputConfig[i]);
    // ��������� ����
    fout.Close();
}

/******************************************************************************/
/**                         ������ ��������                                   */
/******************************************************************************/
if (fso.FileExists(path+author+"\\markers.xc")) {
    var    enemy = ['"ally"', '"enemy"' ];       // ������ ����/�����
    var     dead = ['"alive"',  '"dead"' ];      // ������ �����/�������
    var extended = ['"normal"', '"extended"' ];  // ������ ����������/����������� �����
    // ������ ��� �������� ��������� �������
    inputConfig = fileToArray(path+author+"\\markers.xc");

    for ( var m = 0; m < enemy.length; m++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && !isStart(inputConfig[i], enemy[m]))
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        var i1 = i;
        // ���� ��������� ���� ���������
        for ( j = 0; j < dead.length; j++) {
            i = i1;
            //���� ������, ���������� ������
            while ( i < inputConfig.length && !isStart(inputConfig[i], dead[j]))
                i++;
            // ���� �� �����, ��������� � ��������� ������
            if (i == inputConfig.length)
                continue;
            var i2 = i;
            // ���� ��������� ���� ���������
            for ( p = 0; p < extended.length; p++) {
                //���� ������, ���������� ������
                i = i2;
                while ( i < inputConfig.length && !isStart(inputConfig[i], extended[p]))
                    i++;
                // �������� �������� ������ ��� �������
                section = extended[p].substring(0, extended[p].length-1);
                section = dead[j].substring(0, dead[j].length-1)+section.charAt(1).toUpperCase()+section.substring(2);
                section = "markers"+section.charAt(1).toUpperCase()+section.substring(2);
                // ���� �� �����, ��������� � ��������� ������
                if (i == inputConfig.length)
                    continue;
                // ������� ���� ��� ������ ������
                file_out = path+author+"\\"+section+".xc";
                fout=fso.OpenTextFile(file_out,8,true,false);
                if ( m == 0)
                    fout.WriteLine("{");
                else
                    fout.WriteLine("        },");
                inputConfig[i] = inputConfig[i].replace(extended[p], enemy[m]);
                // �������� ������ � ����
                writeSection();
                // ��������� ������ � ��������� ����
                if ( m == 1) {
                    fout.WriteLine("        }");
                    fout.WriteLine("}");
                }
                fout.Close();
                // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
                input_string = "        "+extended[p]+": ${\""+section+".xc\""+":"+enemy[m]+"}";
                // ���� ������ �� ��������� � �������, ���� �������� �������
                if (inputConfig[i].indexOf(",") != -1)
                    input_string = input_string + ",";
                // ���������� ����������� � ������� ���� �������
                inputConfig.splice(i, 1, input_string, "");
            }
        }
    }
    // ��������� �������� ������ markers �� ������� � ���� markers/markers.xc
    file_out = path+author+"\\markers.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++)
        fout.WriteLine(inputConfig[i]);
    // ��������� ����
    fout.Close();
}

/******************************************************************************/
/**               ������ battle                                               */
/******************************************************************************/
if (fso.FileExists(path+author+"\\battle.xc")) {
    // ������ �������� ������ battle
    sections = [    // ������� ������ ����� �� ������
                        '"elements"'
               ];
    // ������ ��� �������� ��������� �������
    inputConfig = fileToArray(path+author+"\\battle.xc");

    i = 0;
    // ���� ������ ������ battle
    while ( i < inputConfig.length && !isStart(inputConfig[i], '"battle"'))
            i++;
    if (i != inputConfig.length)
        startIndex = i;
		
	regexpOpen = /\[/g;
	regexpClose = /]/g;
	openBr = "[";
	closeBr = "]";
	
    // ���� ��������� ���� ������
    for ( j = 0; j < sections.length; j++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
            i++;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = section.substring(1);
        // ���� �� �����, ����������� ��������
        if (i == inputConfig.length) {
            inputConfig.splice(startIndex+1, 0, sectionsComments[section].en, sectionsComments[section].ru, "  "+sections[j]+": [", "    ", "  ],");
            i = startIndex+3;
            // ���� ��� �� ���������� �������, ���� ������-�������� ��������� ����
            var lastRef = false;
            if (j == sections.length-1 && blankBattle)
                lastRef = true;
        }
        // ���� ����� ������� ��� �����������, ���������� ���������
        if (numberComments(i)==0) {
            inputConfig.splice(i, 0, sectionsComments[section].en, sectionsComments[section].ru);
            i = i + 2;
        }
        startIndex = i;
        // ������� ���� ��� ������ ������
        file_out = path+author+"\\"+section+".xc";
        fout=fso.OpenTextFile(file_out,2,true,false);
        fout.WriteLine("{");
        // �������� ������ � ����
        writeSection();
        // ��������� ������ � ��������� ����
        fout.WriteLine("  ]");
        fout.WriteLine("}");
        fout.Close();
        // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
        input_string = "    "+sections[j]+": ${\""+section+".xc\""+":"+sections[j]+"}";
        // ���� ������ �� ��������� � �������, ���� �������� �������
        if (inputConfig[i].indexOf(",") != -1 && !lastRef)
            input_string = input_string + ",";
        // ���������� ����������� � ������� ���� �������
        inputConfig.splice(i, 1, input_string, "");
    }

    // ��������� �������� ������ minimap �� ������� � ���� minimap/minimap.xc
    file_out = path+author+"\\battle.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++)
        fout.WriteLine(inputConfig[i]);
    // ��������� ����
    fout.Close();
}

// ����������� ��������� ������ � ��������, ���� ������ ����� � res_mods/xvm/anyFolder/script.js
var xvmFolder = path.substring(0, path.length-1);
xvmFolder = xvmFolder.substring(0, xvmFolder.lastIndexOf("\\")+1);
var change = "";
if (xvmFolder.substring(xvmFolder.length-14) == "\\res_mods\\xvm\\") {
    file_out = xvmFolder+"configs\\xvm.xc";
    if (fso.FileExists(file_out))
        fso.GetFile(file_out).copy(xvmFolder+"configs\\xvm.xc.old");
    fout=fso.OpenTextFile(file_out,2,true,false);
    fout.WriteLine('${"'+author+'/@xvm.xc":"."}');
    if (Rus)
        change = '\n� �������� � �������� �:\n"'+xvmFolder+'xvm.xc"';
    else
        change = '\nAnd set for loading in:\n"'+xvmFolder+'xvm.xc"';
}

// ������������ � ����������� ������
if (Rus)
    WScript.Echo('������ ������� �������� �:\n"'+path+author+'\\"'+change);
else
    WScript.Echo('Config successfully saved in:\n"'+path+author+'\\"'+change);

// ��������� ���������� �������
WScript.Quit();


/******************************************************************************/
/**                     ��������������� �������                               */
/******************************************************************************/

// ������� �������� ������� ���������� ����������� � ����������� ������ � ������
function diffBraces(line) {
  //WScript.Echo(brace);
  //WScript.Quit();
  var openBraces = 0;
  var closeBraces = 0;
  // ������� �����������
  if (line.indexOf(openBr) != -1)
    openBraces = line.match(regexpOpen).length;
  // ������� �����������
  if (line.indexOf(closeBr) != -1)
    closeBraces = line.match(regexpClose).length;
  // ���������� �������
  return openBraces-closeBraces
}

// �������, ������������ true, ���� ������ �������� ��������� � ������ ��� ����� ����� �������� � �����
function isStart(line, sect) {
  if ( line.substring(0, 3) == "﻿")
    line = line.substring(3);
  while (line.indexOf(" ") == 0 || line.indexOf("\t") == 0 )
    line = line.substring(1);
  if (line.indexOf(sect) == 0)
    return true
  else
    return false
}

// ������� ��������, �������� �� ������ ������������
function isComment(line) {
  return isStart(line, "//")
}

// �������, ������������ ���������� ����� ������ � ������������� ���� i-� ������
function numberComments(i) {
  var n = 0;
  while (isComment(inputConfig[i-n-1]))
    n++;
  return n
}

// �������� ��������� ���� ����� �� �����
function delStrings(file_out) {
    finput=fso.OpenTextFile(file_out,1,false,false);
    var n = 0;
    // ��������� � ������
    var inputArr = new Array();
    while(!finput.AtEndOfStream){
        inputArr[n] = finput.ReadLine();
        n++;
    }
    finput.Close();
    n = n-2;
    finput=fso.OpenTextFile(file_out,2,true,false);
    var k = 0;
    while ( k < n) {
        finput.WriteLine(inputArr[k]);
        k++;
    }
    finput.Close();
}

// �������, ��������� � ������ ��������� ��������� "}" ��� "},"
function delLastBrace(line) {
  if (section == "minimap" && diffBraces(inputConfig[i]) == 0)
    var minimapFix = ",";
  else
    minimapFix = "";
  if ( line.lastIndexOf("},") != -1 && line.lastIndexOf("},") == line.lastIndexOf("}"))
    return line.substring(0, line.lastIndexOf("},"))+minimapFix+line.substring(line.lastIndexOf("},")+2);
  else
    return line.substring(0, line.lastIndexOf("}"))+minimapFix+line.substring(line.lastIndexOf("}")+1);
}

// �������, ���������� ������ � ����
function writeSection() {
    // ���������� �����������, �������������� ������
    for (var k = numberComments(i); k > 0; k--)
      fout.WriteLine(inputConfig[i-k]);
    // ������� ������� ����� ����������� ����������� � ����������� ������
    var diff = diffBraces(inputConfig[i]);
    if (diff == 0)
        // ���� ������ �� ����� ������, ����� � ���� ��� ������ ��� ��������� ������
        fout.WriteLine(delLastBrace(inputConfig[i]));
    else
        // ����� ����� � ����, ���� �� ������ �� ����� ������ (��������� ��������� ������ ������)
        while (diff > 0) {
            fout.WriteLine(inputConfig[i]);
            inputConfig.splice(i, 1);
            diff = diff + diffBraces(inputConfig[i]);
        }
}

// �������, ����������� ���� � ������
function fileToArray(file_input) {
    var inputConfig = new Array();
    var finput = fso.OpenTextFile(file_input,1,false,false);
    var i = 0;
    // ��������� ������ � ������
    while(!finput.AtEndOfStream){
      inputConfig[i]=finput.ReadLine();
      i++;
    }
    finput.Close();
    return inputConfig;
}