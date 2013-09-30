// ������ ��� ������ ������ ������������� �������� �� ������

// ������ �����
var text_replace1="{{xwn}}";
var text_replace2="{{c:xwn}}";

var text_samples1 = [    // ���������� �����
                        "{{wn}}",
                        "{{eff:4}}",
                        "{{eff}}",
                        "{{xeff}}",
                        "{{xwn}}"
                    ];
var text_samples2 = [    // ���������� �����
                        "{{c:wn}}",
                        "{{c:eff}}",
                        "{{c:xeff}}",
                        "{{c:xwn}}"
                    ];

var i=0;
do {
    // ��� ����� ���� �� ��������� ��� ������ XVM.xc, ���� �������� ����
    if (WScript.Arguments.length<1) {
        var file_name="XVM.xc";
    }
    else {
        file_name=WScript.Arguments(i);
    }

    var fso=WScript.CreateObject("Scripting.FileSystemObject");
    if (!fso.FileExists(file_name))
      break;
    // ��������� �������� ���� �� ���������
    var file_name_tmp=file_name+".tmp";
    if(fso.FileExists(file_name_tmp))
      fso.DeleteFile(file_name_tmp);
    fso.MoveFile(file_name,file_name_tmp);

    var fo=fso.OpenTextFile(file_name_tmp,1,false,false);
    var fr=fso.OpenTextFile(file_name,2,true,false);
    // ������ ����, ���� �� ����������
    while(!fo.AtEndOfStream){
      var line=fo.ReadLine();
      var line_replace=line;
      // ������ ������ ������
      for ( var j = 0; j < text_samples1.length; j++) {
          var re=new RegExp(text_samples1[j]);
          line_replace=line_replace.replace(re,text_replace1);
          line_replace=line_replace.replace(re,text_replace1);
      }
      // ������ ������ ������
      for ( j = 0; j < text_samples2.length; j++) {
          re=new RegExp(text_samples2[j]);
          line_replace=line_replace.replace(re,text_replace2);
          line_replace=line_replace.replace(re,text_replace2);
      }   
      fr.WriteLine(line_replace);
    }
    fo.Close();
    fr.Close();
    // ������� �������� ����
    fso.DeleteFile(file_name_tmp);

    i++
} while (i<WScript.Arguments.length);