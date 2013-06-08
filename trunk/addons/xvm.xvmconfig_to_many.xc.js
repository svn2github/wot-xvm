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

var fso=WScript.CreateObject("Scripting.FileSystemObject");
var wsh = WScript.CreateObject("WScript.Shell");
// ���� �� ����� �� ��������
var path = WScript.ScriptFullName.substr(0, (WScript.ScriptFullName.length - WScript.ScriptName.length));

// ��� ����� ������� ���� �� ��������� ��� ������ XVM.xvmconf, ���� �������� ����
var file_input="XVM.xvmconf";
if (WScript.Arguments.length>0) {
    file_input=WScript.Arguments(0);
}
   
// ��������� ������� ����� XVM.xvmconf
if (!fso.FileExists(file_input)) {
    if (Rus)
        WScript.Echo("���� \"XVM.xvmconf\" �� ������, ��������� ��� � ��� �� �����,\n ��� ���������� �� ������.\n\n���������: http://www.koreanrandom.com/forum/topic/4643-");
    else
        WScript.Echo("The file \"XVM.xvmconf\" not found, place it in the same folder,\n or drag'n'drop a config on the script.\n\nFor more information: http://www.koreanrandom.com/forum/topic/4643-");
    WScript.Quit();
}

// ������ ��� �������� ��������� �������
var inputConfig = new Array();
var finput=fso.OpenTextFile(file_input,1,false,false);
var i = 0;

// ��������� ������ � ������
while(!finput.AtEndOfStream){
  inputConfig[i]=finput.ReadLine();
  i++;
}
finput.Close();

// ������� ����� ��� ������� �� ����� ������������ � ��� ������
i = 0;
while (i < inputConfig.length && !isStart(inputConfig[i], '"author"')){
  i++;
}
if (i == inputConfig.length) {
    var author = "autoscript by seriych";
} else {
    var author = inputConfig[i].substring(inputConfig[i].indexOf('"author"'));
    author = author.substring(8);
    author = author.substring(author.indexOf("\"")+1);
    author = author.substring(0, author.indexOf("\""));
}
// ���� ����� � ������ ������ ����������, ������� ����� � �������� ��������
if (fso.FolderExists(path+author)) {
    i = 1;
    while (fso.FolderExists(path+author+" "+i)) {
        i++;
    }
    author = author+" "+i;
}
fso.CreateFolder(path+author);

// ���� ��������� ���� ������
for ( var j = 0; j < sections.length; j++) {
    i = 0;
    //���� ������, ���������� ������
    while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
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
        fso.CreateFolder(path+author+"\\"+section);
    };
    // ������� ���� ��� ������ ������
    if (section == "userInfo" && fso.FileExists(path+author+"\\hangar.xc")) {
        var file_out = path+author+"\\hangar.xc";
        delStrings(file_out);
        var fout=fso.OpenTextFile(file_out,8,true,false);
        section = "hangar";
        fout.WriteLine("  },");
    } else if ( (section == "fragCorrelation" || section == "expertPanel") && fso.FileExists(path+author+"\\battle.xc")) {
        var file_out = path+author+"\\battle.xc";
        delStrings(file_out);
        var fout=fso.OpenTextFile(file_out,8,true,false);
        section = "battle";
        fout.WriteLine("  },");
    } else {
        file_out = sections[j].substring(0, sections[j].length-1);
        file_out = path+author+"\\"+subfolder+file_out.substring(1)+".xc";
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
file_out = path+author+"\\@XVM.xc";
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
// ��������� ����
fout.Close();

/******************************************************************************
               ������ ���������
******************************************************************************/

if (fso.FileExists(path+author+"\\minimap\\minimap.xc")) {
    // ������ �������� ������ ���������
    sections = [    // ������� ������ ����� �� ������
                        '"labels"',
                        '"circles"',
                        '"lines"'
                ];
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(path+author+"\\minimap\\minimap.xc",1,false,false);
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
        while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = "minimap"+section.charAt(1).toUpperCase()+section.substring(2);
        // ������� ���� ��� ������ ������
        file_out = path+author+"\\minimap\\"+section+".xc";
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
    file_out = path+author+"\\minimap\\minimap.xc";
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

if (fso.FileExists(path+author+"\\colors.xc")) {
    // ������ �������� ������ ������
    sections = [    // ������� ������ ����� �� ������
                        '"damage"'
                ];
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(path+author+"\\colors.xc",1,false,false);
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
        while ( i < inputConfig.length && !isStart(inputConfig[i], sections[j]))
            i++;
        // ���� �� �����, ��������� � ��������� ������
        if (i == inputConfig.length)
            continue;
        // �������� �������� ������ ��� �������
        section = sections[j].substring(0, sections[j].length-1);
        section = "colors"+section.charAt(1).toUpperCase()+section.substring(2);
        // ������� ���� ��� ������ ������
        file_out = path+author+"\\"+section+".xc";
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
    file_out = path+author+"\\colors.xc";
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

if (fso.FileExists(path+author+"\\markers\\markers.xc")) {
    var    enemy = ['"ally"', '"enemy"' ];       // ������ ����/�����
    var     dead = ['"alive"',  '"dead"' ];      // ������ �����/�������
    var extended = ['"normal"', '"extended"' ];  // ������ ����������/����������� �����
    // ������ ��� �������� ��������� �������
    inputConfig = new Array();
    finput=fso.OpenTextFile(path+author+"\\markers\\markers.xc",1,false,false);

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
                // ���� �� �����, ��������� � ��������� ������
                if (i == inputConfig.length)
                    continue;
                // �������� �������� ������ ��� �������
                section = extended[p].substring(0, extended[p].length-1);
                section = dead[j].substring(0, dead[j].length-1)+section.charAt(1).toUpperCase()+section.substring(2);
                section = "markers"+section.charAt(1).toUpperCase()+section.substring(2);
                // ������� ���� ��� ������ ������
                file_out = path+author+"\\markers\\"+section+".xc";
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
    file_out = path+author+"\\markers\\markers.xc";
    fout=fso.OpenTextFile(file_out,2,true,false);
    for ( i = 0; i < inputConfig.length; i++) {
        fout.WriteLine(inputConfig[i]);
    }
    // ��������� ����
    fout.Close();
}

// ����������� ��������� ������ � ��������, ���� ������ ������ ����� � res_mods/xvm/anyFolder/script.js
var xvmFolder = path.substring(0, path.length-1);
var scriptFolder = xvmFolder.substring(xvmFolder.lastIndexOf("\\")+1);
xvmFolder = xvmFolder.substring(0, xvmFolder.lastIndexOf("\\")+1);
var change = "";
if (xvmFolder.substring(xvmFolder.length-14) == "\\res_mods\\xvm\\") {
    file_out = xvmFolder+"xvm.xc";
    fso.GetFile(file_out).copy(xvmFolder+"xvm.xc.old");
    fout=fso.OpenTextFile(file_out,2,true,false);
    fout.WriteLine('${"'+scriptFolder+'/'+author+'/@xvm.xc":"."}');
    if (Rus)
        change = '\n� �������� � �������� �:\n"'+xvmFolder+'xvm.xc"';
    else
        change = '\nAnd set for loading in:\n"'+xvmFolder+'xvm.xc"';
}

// ������������ � ����������� ������
if (Rus)
    WScript.Echo("������ ������� �������� �:\n\""+path+author+"\\\""+change);
else
    WScript.Echo("Config successfully saved in:\n\""+path+author+"\\\""+change);

// ��������� ���������� �������
WScript.Quit();

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

// �������, ������������ true, ���� ������ �������� ��������� � ������ ��� ����� ����� �������� � �����
function isStart(line, sect) {
  while (line.indexOf(" ") == 0 || line.indexOf("   ") == 0 )
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
    while(k<n){
        finput.WriteLine(inputArr[k]);
        k++;
    }
    finput.Close();
}