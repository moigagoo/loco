import unittest

import localizations/en_US


suite "English localization":
  test "Simple lang var":
    check hello() == "hello"

  test "Complex lang var":
    check 0.users == "no users"
    check 1.users == "1 user"
    check 2.users == "2 users"
    check 10.users == "10 users"
    check 11.users == "11 users"
    check 12.users == "12 users"
    check 20.users == "20 users"
    check 21.users == "21 users"
    check 22.users == "22 users"
    check 100.users == "100 users"
    check 101.users == "101 users"
    check 102.users == "102 users"
    check 110.users == "110 users"
    check 111.users == "111 users"
    check 112.users == "112 users"
    check 120.users == "120 users"
    check 121.users == "121 users"
    check 122.users == "122 users"

  test "Complex lang var with negative values":
    check (-1).users == "-1 user"
    check (-2).users == "-2 users"
    check (-10).users == "-10 users"
    check (-11).users == "-11 users"
    check (-12).users == "-12 users"
    check (-20).users == "-20 users"
    check (-21).users == "-21 users"
    check (-22).users == "-22 users"
    check (-100).users == "-100 users"
    check (-101).users == "-101 users"
    check (-102).users == "-102 users"
    check (-110).users == "-110 users"
    check (-111).users == "-111 users"
    check (-112).users == "-112 users"
    check (-120).users == "-120 users"
    check (-121).users == "-121 users"
    check (-122).users == "-122 users"
