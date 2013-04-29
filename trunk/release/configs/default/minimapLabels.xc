/**
 *
 */
{
  "labels": {                     // ��������� ����. ������������ HTML.
      "nickShrink": 5,              // ������������ ������ ���� ��� ������� {{short-nick}}.
      "vehicleclassmacro": {        // ����������� ������� {{vehicle-class}}
        "light": "", // �T �
        "medium": "",// ��
        "heavy": "", // ��
        "td": "",    // �� �
        "spg": "�",  // ����
        "superh": "" // ��10 ����������� gui_settings.xml
        // ���� �� ���� ���������:
        //   http://www.fileformat.info/info/unicode/char/25a0/index.htm
        // �������� ���������� ����� �� Andrey_Hard ��� ������ ���� �� {{vehicle-class}} �������:
        //   http://goo.gl/d2KIj
      },
      "units": { // ��������� ���� ��� ������ �� ���������.
        "revealedEnabled": true, // ����������� ���������� ��������� ����� ��� ������� ������.
        "lostEnemyEnabled": true,// ����������� ��������� ����� ��� ��������� ������.
        "format": { // ������ ����.
          "ally":  "<span class='mm_a'>{{vehicle}}</span>", // �������
          "enemy": "<span class='mm_e'>{{vehicle}}</span>", // ����
          "squad": "<textformat leading='-1'><span class='mm_s'><i>{{short-nick}}</i>\n{{vehicle}}</span><textformat>", // ����������.
          "lost":  "<span class='mm_dot'>\u2022</span><span class='mm_l'><i>{{vehicle}}</i></span>",  // ��� ��������� � ��������� ������.
          "oneself": ""  // ��� ������ ������� � ������� �������� ������ ���������� � ������ ������.
        },
        "css": { // CSS �����.
          "ally":  ".mm_a{font-family:$FieldFont; font-size:8px; color:#C8FFA6;}",
          "enemy": ".mm_e{font-family:$FieldFont; font-size:8px; color:#FCA9A4;}",
          "squad": ".mm_s{font-family:$FieldFont; font-size:8px; color:#FFC099;}",
          "lost":  ".mm_l{font-family:$FieldFont; font-size:8px; color:#FCA9A4;} .mm_dot{font-family:Arial; font-size:17px; color:#FCA9A4;}",
          "oneself": ".mm_o{font-family:$FieldFont; font-size:8px; color:#FFFFFF;}"
        },
        "shadow": { // ���� �����.
          "ally": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0, // ��������� ���� ������������ ����.
            "angle": 0,    // ���� ���� ��� ��������� > 0
            "alpha": 80,   // ������������
            "blur": 3,     // ��������
            "strength": 4  // ����
          },
          "enemy": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          },
          "squad": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          },
          "lost": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 6,
            "strength": 4
          },
          "oneself": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          }
        },
        "offset": { // ������������
          "ally":  {"x": 3, "y": -1},   // �������� ���� ������������ ������� ������.
          "enemy": {"x": 3, "y": -1},   // �������� ���� ������������ ������� ������.
          "squad": {"x": 3, "y": -2},   // �������� ���� ������������ ������� ������.
          "lost":  {"x": -6, "y": -10}, // �������� ������������ ��������� ��������� ������� �������.
          "oneself": {"x": 0, "y": 0}   // �������� ���� ������������ ������� ������.
        },
        "alpha" : { // ������������ ��������� �����.
          "ally":  100,
          "enemy": 100,
          "squad": 100,
          "lost":  70,
          "oneself": 100
        }
      },
      "mapSize": { // ���� ������� ������� �����. ��������, 1000�, 700�, 600�.
        "enabled": true,
        "format": "<b>{{cellsize}}0 �</b>",
        "css": "font-size:10px; color:#FFCC66;",
        "alpha": 80,
        "offsetX": 0,
        "offsetY": 0,
        "shadow": { // ����.
          "enabled": true,
          "color": "0x000000",
          "distance": 0,
          "angle": 0,
          "alpha": 80,
          "blur": 2,
          "strength": 3
        },
        // ���������� �������, ���� ��� ��������� ������� ��������� ����������� ����� ���������.
        // ������������ �������, ���� ���������� ���� ����������.
        "width": 100,
        "height": 30
      }
    }
}