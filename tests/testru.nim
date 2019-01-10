import unittest

import localizations/ru_RU


suite "Russian localization":
  test "Simple lang var":
    check hello() == "привет"

  test "Complex lang var":
    check 0.users == "ни одного пользователя"
    check 1.users == "1 пользователь"
    check 2.users == "2 пользователя"
    check 3.users == "3 пользователя"
    check 4.users == "4 пользователя"
    check 5.users == "5 пользователей"
    check 6.users == "6 пользователей"
    check 7.users == "7 пользователей"
    check 8.users == "8 пользователей"
    check 9.users == "9 пользователей"
    check 10.users == "10 пользователей"
    check 11.users == "11 пользователей"
    check 12.users == "12 пользователей"
    check 13.users == "13 пользователей"
    check 14.users == "14 пользователей"
    check 15.users == "15 пользователей"
    check 16.users == "16 пользователей"
    check 17.users == "17 пользователей"
    check 18.users == "18 пользователей"
    check 19.users == "19 пользователей"
    check 20.users == "20 пользователей"
    check 21.users == "21 пользователь"
    check 22.users == "22 пользователя"
    check 23.users == "23 пользователя"
    check 24.users == "24 пользователя"
    check 25.users == "25 пользователей"
    check 100.users == "100 пользователей"
    check 101.users == "101 пользователь"
    check 102.users == "102 пользователя"
    check 103.users == "103 пользователя"
    check 104.users == "104 пользователя"
    check 105.users == "105 пользователей"
    check 106.users == "106 пользователей"
    check 107.users == "107 пользователей"
    check 108.users == "108 пользователей"
    check 109.users == "109 пользователей"
    check 110.users == "110 пользователей"
    check 111.users == "111 пользователей"
    check 112.users == "112 пользователей"
    check 113.users == "113 пользователей"
    check 114.users == "114 пользователей"
    check 115.users == "115 пользователей"
    check 116.users == "116 пользователей"
    check 117.users == "117 пользователей"
    check 118.users == "118 пользователей"
    check 119.users == "119 пользователей"
    check 120.users == "120 пользователей"
    check 121.users == "121 пользователь"
    check 122.users == "122 пользователя"
    check 123.users == "123 пользователя"
    check 124.users == "124 пользователя"
    check 125.users == "125 пользователей"

  test "Complex lang var with negative values":
    check (-1).users == "-1 пользователь"
    check (-2).users == "-2 пользователя"
    check (-3).users == "-3 пользователя"
    check (-4).users == "-4 пользователя"
    check (-5).users == "-5 пользователей"
    check (-6).users == "-6 пользователей"
    check (-7).users == "-7 пользователей"
    check (-8).users == "-8 пользователей"
    check (-9).users == "-9 пользователей"
    check (-10).users == "-10 пользователей"
    check (-11).users == "-11 пользователей"
    check (-12).users == "-12 пользователей"
    check (-13).users == "-13 пользователей"
    check (-14).users == "-14 пользователей"
    check (-15).users == "-15 пользователей"
    check (-16).users == "-16 пользователей"
    check (-17).users == "-17 пользователей"
    check (-18).users == "-18 пользователей"
    check (-19).users == "-19 пользователей"
    check (-20).users == "-20 пользователей"
    check (-21).users == "-21 пользователь"
    check (-22).users == "-22 пользователя"
    check (-23).users == "-23 пользователя"
    check (-24).users == "-24 пользователя"
    check (-25).users == "-25 пользователей"
    check (-100).users == "-100 пользователей"
    check (-101).users == "-101 пользователь"
    check (-102).users == "-102 пользователя"
    check (-103).users == "-103 пользователя"
    check (-104).users == "-104 пользователя"
    check (-105).users == "-105 пользователей"
    check (-106).users == "-106 пользователей"
    check (-107).users == "-107 пользователей"
    check (-108).users == "-108 пользователей"
    check (-109).users == "-109 пользователей"
    check (-110).users == "-110 пользователей"
    check (-111).users == "-111 пользователей"
    check (-112).users == "-112 пользователей"
    check (-113).users == "-113 пользователей"
    check (-114).users == "-114 пользователей"
    check (-115).users == "-115 пользователей"
    check (-116).users == "-116 пользователей"
    check (-117).users == "-117 пользователей"
    check (-118).users == "-118 пользователей"
    check (-119).users == "-119 пользователей"
    check (-120).users == "-120 пользователей"
    check (-121).users == "-121 пользователь"
    check (-122).users == "-122 пользователя"
    check (-123).users == "-123 пользователя"
    check (-124).users == "-124 пользователя"
    check (-125).users == "-125 пользователей"