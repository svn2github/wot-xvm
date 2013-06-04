/******************************************************************************
      ������ ��� �������� ������� XVM.xvmconf ��� ������ XVM-4.0.0+
	  Automatic conversion XVM.xvmconf to the new format XVM-4.0.0+
	  
	  ���������� (instructions):
      http://www.koreanrandom.com/forum/topic/4643-
******************************************************************************/

// ������ �������� ������
var sections = [    // ������� ������ ����� �� ������
                    '"login"',
                    '"iconset"',
                    '"markers"',
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
                    '"battle"',
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

// ���������� ���� �������
var reg = WScript.CreateObject('WScript.Shell');
var Rus=reg.RegRead('HKLM\\SYSTEM\\CurrentControlSet\\Control\\Nls\\Language\\Default');
if (Rus=="0419" || Rus=="0422" || Rus=="0423" || Rus=="043f")
    Rus = true;
else
    Rus = false;

// ��������� ������� ����� XVM.xvmconf
var fso=WScript.CreateObject("Scripting.FileSystemObject");
if (!fso.FileExists("XVM.xvmconf")) {
    if (Rus)
        WScript.Echo("���� \"XVM.xvmconf\" �� ������, ��������� ��� � ��� �� �����.\n���������: http://www.koreanrandom.com/forum/topic/4643-");
    else
        WScript.Echo("The file \"XVM.xvmconf\" not found, place it in the same folder.\nFor more information: http://www.koreanrandom.com/forum/topic/4643-");
    WScript.Quit();
}

// ������ ��� �������� ��������� �������
var inputConfig = new Array();
var finput=fso.OpenTextFile("XVM.xvmconf",1,false,false);
var i = 0;

// ��������� ������ � ������
while(!finput.AtEndOfStream){
  inputConfig[i]=finput.ReadLine();
  i++;
}
finput.Close();

// ������������ ������ ������� �� 4.0.0
i = 0;
while (inputConfig[i].indexOf('"configVersion"') == -1){
  i++;
}
var version = inputConfig[i].substring(inputConfig[i].indexOf("\"")+1);
version = version.substring(version.indexOf("\"")+1);
version = version.substring(version.indexOf("\"")+1);
version = version.substring(version.indexOf("\""));
inputConfig[i] = inputConfig[i].substring(0, inputConfig[i].indexOf("configVersion")-1)+'"configVersion": "'+'4.0.0'+version;

// ������� ����� ��� ������� �� ����� ������������ � ��� ������
i = 0;
while (inputConfig[i].indexOf('"author"') == -1){
  i++;
}
var author = inputConfig[i].substring(inputConfig[i].indexOf('"author"'));
author = author.substring(8);
author = author.substring(author.indexOf("\"")+1);
author = author.substring(0, author.indexOf("\""));
// ���� ����� � ������ ������ ����������, ������� ����� � �������� ��������
if (fso.FolderExists(author)) {
    i = 1;
    while (fso.FolderExists(author+" "+i)) {
        i++;
    }
    author = author+" "+i;
}
fso.CreateFolder(author);

// ���� ��������� ���� ������
for ( var j = 0; j < sections.length; j++) {
    i = 0;
    //���� ������, ���������� ������
    while ( i < inputConfig.length && inputConfig[i].indexOf(sections[j]) == -1)
        i++;
    // ���� �� �����, ��������� � ��������� ������
    if (i == inputConfig.length)
        continue;
    // �������� �������� ������ ��� �������
    var section = sections[j].substring(0, sections[j].length-1);
    section = section.substring(1);
    // ���� ������ ��������� ��� ��������, �� ���� ��������� ��� ��� �����
    var subfolder = "";
    if (section == "minimap" || section == "markers") {
        subfolder = section+"\\";
        fso.CreateFolder(author+"\\"+section);
    };
    // ������� ���� ��� ������ ������
    if (section == "userInfo" && fso.FileExists(author+"\\hangar.xc")) {
        var file_out = author+"\\hangar.xc";
        delStrings(file_out);
        var fout=fso.OpenTextFile(file_out,8,true,false);
        section = "hangar";
        fout.WriteLine("  },");
    } else if ( (section == "fragCorrelation" || section == "expertPanel") && fso.FileExists(author+"\\battle.xc")) {
        var file_out = author+"\\battle.xc";
        delStrings(file_out);
        var fout=fso.OpenTextFile(file_out,8,true,false);
        section = "battle";
        fout.WriteLine("  },");
    } else {
        file_out = sections[j].substring(0, sections[j].length-1);
        file_out = author+"\\"+subfolder+file_out.substring(1)+".xc";
        fout=fso.OpenTextFile(file_out,2,true,false);
        fout.WriteLine("{");
    }
    // ���������� �����������, �������������� ������
    for (var k = numberComments(i); k > 0; k--)
      fout.WriteLine(inputConfig[i-k]);
    // ������� ������� ����� ����������� ����������� � ����������� ������
    var diff = diffBraces(inputConfig[i]);
    // ����� ������ � ����, ���� �� ������ �� ����� ������ (��������� ��������� ������ ������)
    do {
      fout.WriteLine(inputConfig[i]);
      // ������� ���������� ������ �� ��������� �������
      inputConfig.splice(i, 1);
      diff = diff + diffBraces(inputConfig[i]);
    } while (diff > 0);  // ������� �� �����, ���� ������ ���������
    // ��������� ������ � ��������� ����
    fout.WriteLine("  }");
    fout.WriteLine("}");
    fout.Close();
    // ���������, ���� �� ���������� ������ �� ������ � ������ ��������
    if (subfolder != "")
        subfolder=subfolder.substring(0, subfolder.length-1)+"/";
    // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
    input_string = "  "+sections[j]+": ${\""+subfolder+section+".xc\""+":"+sections[j]+"}";
    // ���� ������ �� ��������� � �������, ���� �������� �������
    if (inputConfig[i].indexOf(",") != -1)
        input_string = input_string + ",";
    // ���������� ����������� � ������� ���� �������
    inputConfig.splice(i, 1, input_string, "");
}

// ��������� �������� �������� ������� �� ������� � ���� @XVM.xc
file_out = author+"\\@XVM.xc";
fout=fso.OpenTextFile(file_out,2,true,false);
for ( i = 0; i < inputConfig.length; i++) {
    fout.WriteLine(inputConfig[i]);
}
fout.WriteLine();
if (Rus)
    fout.WriteLine("//  Автоматически сгенерировано этим скриптом:");
else
    fout.WriteLine("//  Automatically generated by this script:");
fout.WriteLine("//  http://www.koreanrandom.com/forum/topic/4643-");
fout.WriteLine();
// ��������� ����
fout.Close();

/******************************************************************************
               ������ ���������
******************************************************************************/

if (fso.FileExists(author+"\\minimap\\minimap.xc")) {
    // ������ �������� ������ ���������
    sections = [    // ������� ������ ����� �� ������
                        '"labels"',
                        '"circles"',
                        '"lines"'
                ];
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(author+"\\minimap\\minimap.xc",1,false,false);
    i = 0;

    // ��������� ������ � ������
    while(!finput.AtEndOfStream){
      inputConfig[i]=finput.ReadLine();
      i++;
    }
    finput.Close();

    // ���� ��������� ���� ������
    for ( j = 0; j < sections.length; j++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && inputConfig[i].indexOf(sections[j]) == -1)
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = "minimap"+section.charAt(1).toUpperCase()+section.substring(2);
        // ������� ���� ��� ������ ������
        file_out = author+"\\minimap\\"+section+".xc";
        fout=fso.OpenTextFile(file_out,2,true,false);
        fout.WriteLine("{");
        // ���������� �����������, �������������� ������
        for ( k = numberComments(i); k > 0; k--)
          fout.WriteLine(inputConfig[i-k]);
        // ������� ������� ����� ����������� ����������� � ����������� ������
        diff = diffBraces(inputConfig[i]);
        // ����� ������ � ����, ���� �� ������ �� ����� ������ (��������� ��������� ������ ������)
        do {
          fout.WriteLine(inputConfig[i]);
          // ������� ���������� ������ �� ��������� �������
          inputConfig.splice(i, 1);
          diff = diff + diffBraces(inputConfig[i]);
        } while (diff > 0);  // ������� �� �����, ���� ������ ���������
        // ��������� ������ � ��������� ����
        fout.WriteLine("  }");
        fout.WriteLine("}");
        fout.Close();
        // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
        input_string = "    "+sections[j]+": ${\""+section+".xc\""+":"+sections[j]+"}";
        // ���� ������ �� ��������� � �������, ���� �������� �������
        if (inputConfig[i].indexOf(",") != -1)
            input_string = input_string + ",";
        // ���������� ����������� � ������� ���� �������
        inputConfig.splice(i, 1, input_string, "");
    }

    // ��������� �������� ������ minimap �� ������� � ���� minimap/minimap.xc
    file_out = author+"\\minimap\\minimap.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++) {
        fout.WriteLine(inputConfig[i]);
    }
    // ��������� ����
    fout.Close();
}

/******************************************************************************
                         ������ ������
******************************************************************************/

if (fso.FileExists(author+"\\colors.xc")) {
    // ������ �������� ������ ������
    sections = [    // ������� ������ ����� �� ������
                        '"damage"'
                ];
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(author+"\\colors.xc",1,false,false);
    i = 0;

    // ��������� ������ � ������
    while(!finput.AtEndOfStream){
      inputConfig[i]=finput.ReadLine();
      i++;
    }
    finput.Close();

    // ���� ��������� ���� ������
    for ( j = 0; j < sections.length; j++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && inputConfig[i].indexOf(sections[j]) == -1)
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = "colors"+section.charAt(1).toUpperCase()+section.substring(2);
        // ������� ���� ��� ������ ������
        file_out = author+"\\"+section+".xc";
        fout=fso.OpenTextFile(file_out,2,true,false);
        fout.WriteLine("{");
        // ���������� �����������, �������������� ������
        for ( k = numberComments(i); k > 0; k--)
          fout.WriteLine(inputConfig[i-k]);
        // ������� ������� ����� ����������� ����������� � ����������� ������
        diff = diffBraces(inputConfig[i]);
        // ����� ������ � ����, ���� �� ������ �� ����� ������ (��������� ��������� ������ ������)
        do {
          fout.WriteLine(inputConfig[i]);
          // ������� ���������� ������ �� ��������� �������
          inputConfig.splice(i, 1);
          diff = diff + diffBraces(inputConfig[i]);
        } while (diff > 0);  // ������� �� �����, ���� ������ ���������
        // ��������� ������ � ��������� ����
        fout.WriteLine("  }");
        fout.WriteLine("}");
        fout.Close();
        // ������� ������ ��� ������ � ������� ���� ������� ����������� ������ ������
        input_string = "    "+sections[j]+": ${\""+section+".xc\""+":"+sections[j]+"}";
        // ���� ������ �� ��������� � �������, ���� �������� �������
        if (inputConfig[i].indexOf(",") != -1)
            input_string = input_string + ",";
        // ���������� ����������� � ������� ���� �������
        inputConfig.splice(i, 1, input_string, "");
    }

    // ��������� �������� ������ colors �� ������� � ���� colors.xc
    file_out = author+"\\colors.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++) {
        fout.WriteLine(inputConfig[i]);
    }
    // ��������� ����
    fout.Close();
}

/******************************************************************************
                         ������ ��������
******************************************************************************/

if (fso.FileExists(author+"\\markers\\markers.xc")) {
    var    enemy = ['"ally"', '"enemy"' ];       // ������ ����/�����
    var     dead = ['"alive"',  '"dead"' ];      // ������ �����/�������
    var extended = ['"normal"', '"extended"' ];  // ������ ����������/����������� �����
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(author+"\\markers\\markers.xc",1,false,false);

    i = 0;
    // ��������� ������ � ������
    while(!finput.AtEndOfStream){
      inputConfig[i]=finput.ReadLine();
      i++;
    }
    finput.Close();

    for ( var m = 0; m < enemy.length; m++) {
        i = 0;
        //���� ������, ���������� ������
        while ( i < inputConfig.length && inputConfig[i].indexOf(enemy[m]) == -1)
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        var i1 = i;
        // ���� ��������� ���� ���������
        for ( j = 0; j < dead.length; j++) {
            i = i1;
            //���� ������, ���������� ������
            while ( i < inputConfig.length && inputConfig[i].indexOf(dead[j]) == -1)
                i++;
            // ���� �� �����, ��������� � ��������� ������
            if (i == inputConfig.length)
                continue;
            var i2 = i;
            // ���� ��������� ���� ���������
            for ( p = 0; p < extended.length; p++) {
                //���� ������, ���������� ������
                i = i2;
                while ( i < inputConfig.length && inputConfig[i].indexOf(extended[p]) == -1)
                    i++;
                // ���� �� �����, ��������� � ��������� ������
                if (i == inputConfig.length)
                    continue;
                // �������� �������� ������ ��� �������
                section = extended[p].substring(0, extended[p].length-1);
                section = dead[j].substring(0, dead[j].length-1)+section.charAt(1).toUpperCase()+section.substring(2);
                section = "markers"+section.charAt(1).toUpperCase()+section.substring(2);
                // ������� ���� ��� ������ ������
                file_out = author+"\\markers\\"+section+".xc";
                fout=fso.OpenTextFile(file_out,8,true,false);
                if ( m == 0)
                    fout.WriteLine("{");
                else
                    fout.WriteLine("        },");
                // ���������� �����������, �������������� ������
                for ( k = numberComments(i); k > 0; k--)
                  fout.WriteLine(inputConfig[i-k]);
                // ������� ������� ����� ����������� ����������� � ����������� ������
                diff = diffBraces(inputConfig[i]);
                // ����� ������ � ����, ���� �� ������ �� ����� ������ (��������� ��������� ������ ������)
                inputConfig[i] = inputConfig[i].replace(extended[p], enemy[m]);
                do {
                  fout.WriteLine(inputConfig[i]);
                  // ������� ���������� ������ �� ��������� �������
                  inputConfig.splice(i, 1);
                  diff = diff + diffBraces(inputConfig[i]);
                } while (diff > 0);  // ������� �� �����, ���� ������ ���������
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
    file_out = author+"\\markers\\markers.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++) {
        fout.WriteLine(inputConfig[i]);
    }
    // ��������� ����
    fout.Close();
}


// ������������ � ����������� ������
if (Rus)
    WScript.Echo("������ ������� �������� � \""+author+"\\@XVM.xc\"");
else
    WScript.Echo("Config successfully saved in \""+author+"\\@XVM.xc\"");

/******************************************************************************
                     ��������������� �������
******************************************************************************/

// ������� �������� ������� ���������� ����������� � ����������� ������ � ������
function diffBraces(line) {
  var openBraces = 0;
  var closeBraces = 0;
  // ������� �����������
  if (line.indexOf("{") != -1)
    openBraces = line.match(/{/g).length;
  // ������� �����������
  if (line.indexOf("}") != -1)
    closeBraces = line.match(/}/g).length;
  // ���������� �������
  return openBraces-closeBraces
}

// ������� ��������, �������� �� ������ ������������
function isComment(line) {
  while (line.indexOf(" ") == 0 || line.indexOf("   ") == 0 )
    line = line.substring(1);
  if (line.substring(0, 2) == "//")
    return true
  else
    return false
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
    while(k<n){
        finput.WriteLine(inputArr[k]);
        k++;
    }
    finput.Close();
}