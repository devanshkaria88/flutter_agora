import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Enter your app ID here....
String agoraAppId = 'YOUR-APP-ID-HERE';





ValueNotifier<double> height = ValueNotifier(0.0);
ValueNotifier<double> width = ValueNotifier(0.0);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xff9B72AA),
  accentColor: Color(0xffC6B4CE),
  backgroundColor: Color(0xffF8c471),
  iconTheme: IconThemeData(
    color: Color(0xffE28F83),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
        color: Color(0xff171010), fontSize: 36.0, fontFamily: 'NotoSerif'),
    headline2: TextStyle(
        color: Color(0xff171010), fontSize: 32.0, fontFamily: 'NotoSerif'),
    headline3: TextStyle(
        color: Color(0xff171010), fontSize: 28.0, fontFamily: 'NotoSerif'),
    headline4: TextStyle(
        color: Color(0xff171010), fontSize: 24.0, fontFamily: 'NotoSerif'),
    headline5: TextStyle(
        color: Color(0xff171010), fontSize: 20.0, fontFamily: 'NotoSerif'),
    headline6: TextStyle(
        color: Color(0xff171010), fontSize: 16.0, fontFamily: 'NotoSerif'),
  ),
  scaffoldBackgroundColor: Color(0xffF8c471),
);