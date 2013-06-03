﻿/**
 * Minimap lines. Only for owned vehicle.
 * Sizes dependent on meters work only with xvm-stat.exe for uncommon locales.
 * xvm-stat.exe is not necessary for RU, EN, DE and partially CH locale.
 * Линии на миникарте. Только для своей техники.
 */
{
  "lines": {
       "enabled": true,
       // "inmeters": true  - make line size to be in real map meters.
       // "inmeters": false - make line size to be in minimap interface clip points. Minimap interface clip side is 210 points.
       // Distance between farthest corners at 1km map is somewhat more than 1400 meters.
       // Sections can contain any number of lines.
       // To set a point try setting line with length of one and large thickness.
       // You can leave one line for simplicity. Remember comma positioning rules.
       //---------------------------------------------------------------------------------------------------
       // "inmeters": true  - дистанция линии в метрах реальной карты.
       // "inmeters": false - дистанция линии в точках миникарты. Сторона миникарты 210 точек.
       // "thickness" - толщина отрезка; "from" - начало отрезка; "to" - конец; "alpha" - прозрачность; "color" - цвет.
       // Дистанция из угла в угол на километровой карте получается немногим более 1400 метров.
       // В секциях располагается произвольное кол-во отрезков.
       // Для постановки точки попробуйте отрезок длиной в единицу и с большой толщиной.
       // Для простоты можете оставить один длинный отрезок, не забыв убрать зяпятую. В конце секции запятая не ставится.
       //---------------------------------------------------------------------------------------------------
       // Own vehicle direction.
       // Направление корпуса своей техники.
       "vehicle": [
         { "enabled": true, "from": 50,  "to": 95,   "inmeters": true, "thickness": 1.5,  "alpha": 45, "color": "0x60FF00"},
         { "enabled": true, "from": 100, "to": 145,  "inmeters": true, "thickness": 1.4,  "alpha": 40, "color": "0x60FF00"},
         { "enabled": true, "from": 150, "to": 196,  "inmeters": true, "thickness": 1.3,  "alpha": 35, "color": "0x60FF00"},
         { "enabled": true, "from": 200, "to": 246,  "inmeters": true, "thickness": 1.2,  "alpha": 33, "color": "0x60FF00"},
         { "enabled": true, "from": 250, "to": 296,  "inmeters": true, "thickness": 1.1,  "alpha": 30, "color": "0x60FF00"},
         { "enabled": true, "from": 300, "to": 397,  "inmeters": true, "thickness": 1,    "alpha": 30, "color": "0x60FF00"},
         { "enabled": true, "from": 400, "to": 497,  "inmeters": true, "thickness": 0.9,  "alpha": 30, "color": "0x60FF00"},
         { "enabled": true, "from": 500, "to": 2000, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0x60FF00"}
       ],
       // Camera direction.
       // Направление камеры от своей техники.
       "camera": [
         { "enabled": true, "from": 50,  "to": 80,   "inmeters": true, "thickness": 1.3,  "alpha": 45, "color": "0xFFCC66"},
         { "enabled": true, "from": 120, "to": 180,  "inmeters": true, "thickness": 1.2,  "alpha": 40, "color": "0xFFCC66"},
         { "enabled": true, "from": 220, "to": 280,  "inmeters": true, "thickness": 1.1,  "alpha": 35, "color": "0xFFCC66"},
         { "enabled": true, "from": 320, "to": 380,  "inmeters": true, "thickness": 1,    "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 420, "to": 480,  "inmeters": true, "thickness": 0.9,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 520, "to": 580,  "inmeters": true, "thickness": 0.8,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 620, "to": 680,  "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 720, "to": 780,  "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 820, "to": 880,  "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 920, "to": 980,  "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1020,"to": 1080, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1120,"to": 1180, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1220,"to": 1280, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1320,"to": 1380, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1420,"to": 1480, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1520,"to": 1580, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1620,"to": 1680, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1720,"to": 1780, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1820,"to": 1880, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1920,"to": 2000, "inmeters": true, "thickness": 0.75, "alpha": 30, "color": "0xFFCC66"},
         // Dots.
         // Точки.
         { "enabled": true, "from": 99,  "to": 100,  "inmeters": true, "thickness": 2.2,  "alpha": 45, "color": "0xFFCC66"},
         { "enabled": true, "from": 199, "to": 200,  "inmeters": true, "thickness": 2.1,  "alpha": 40, "color": "0xFFCC66"},
         { "enabled": true, "from": 299, "to": 300,  "inmeters": true, "thickness": 2,    "alpha": 35, "color": "0xFFCC66"},
         { "enabled": true, "from": 399, "to": 400,  "inmeters": true, "thickness": 1.9,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 499, "to": 500,  "inmeters": true, "thickness": 1.8,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 599, "to": 600,  "inmeters": true, "thickness": 1.7,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 699, "to": 700,  "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 799, "to": 800,  "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 899, "to": 900,  "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 999, "to": 1000, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1099,"to": 1100, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1199,"to": 1200, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1299,"to": 1300, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1399,"to": 1400, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"},
         { "enabled": true, "from": 1499,"to": 1500, "inmeters": true, "thickness": 1.6,  "alpha": 30, "color": "0xFFCC66"}
       ],
       // Gun traverse angles may differ depending on vehicle angle relative to ground. See pics at http://goo.gl/ZqlPa
       // Углы горизонтальной наводки могут меняться в зависимости от углов постановки машины на склонах местности. Подробнее по ссылке: http://goo.gl/ZqlPa
       //---------------------------------------------------------------------------------------------------
       // Horizontal gun traverse angle lines.
       // Углы горизонтальной наводки.
       "traverseAngle": [
         { "enabled": true, "from": 50,  "to": 95,  "inmeters": true, "thickness": 1.5,   "alpha": 50, "color": "0xCCCCCC"},
         { "enabled": true, "from": 100, "to": 145, "inmeters": true, "thickness": 1.4,   "alpha": 48, "color": "0xCCCCCC"},
         { "enabled": true, "from": 150, "to": 196, "inmeters": true, "thickness": 1.3,   "alpha": 46, "color": "0xCCCCCC"},
         { "enabled": true, "from": 200, "to": 246, "inmeters": true, "thickness": 1.2,   "alpha": 44, "color": "0xCCCCCC"},
         { "enabled": true, "from": 250, "to": 296, "inmeters": true, "thickness": 1.1,   "alpha": 42, "color": "0xCCCCCC"},
         { "enabled": true, "from": 300, "to": 397, "inmeters": true, "thickness": 1,     "alpha": 40, "color": "0xCCCCCC"},
         { "enabled": true, "from": 400, "to": 497, "inmeters": true, "thickness": 0.9,   "alpha": 40, "color": "0xCCCCCC"},
         { "enabled": true, "from": 500, "to": 2000,"inmeters": true, "thickness": 0.75,  "alpha": 40, "color": "0xCCCCCC"}
       ]
    }
}