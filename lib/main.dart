import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
        theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xffBB86FC),
        //   primaryColor:  Color(0xFF202020),
        scaffoldBackgroundColor: Color(0xFA000000),
      ),
//      home: InputPage(title: 'Flutter Demo Home Page'),
      home: SplashScreen(),
    );
  }
}
