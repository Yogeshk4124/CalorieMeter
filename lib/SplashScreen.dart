import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InputPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => InputPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 100),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/food.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'CalorieMeter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

