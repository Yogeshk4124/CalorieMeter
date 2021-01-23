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

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Color(0xffBB86FC),
//         scaffoldBackgroundColor: Color(0xFF181818),
//       ),
// //      home: InputPage(title: 'Flutter Demo Home Page'),
//     initialRoute: '/',
//       routes: {
//         '/':(context)=>InputPage(),
//         // 'AimPage':(context)=>AimPage(),
//         // 'Result':(context)=>Result(String a,String b,double s),
//       },
//     );
//   }
// }
