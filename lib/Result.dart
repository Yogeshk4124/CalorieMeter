import 'package:caloriemeter/InputPage.dart';
import 'package:caloriemeter/ReusableCard.dart';
import 'package:caloriemeter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String status, msg;
  final String statusNumber,currentCalorie,goalCalorie,bmr;
  Result({@required this.status,@required this.msg,this.statusNumber,@required this.currentCalorie,@required this.goalCalorie,@required this.bmr});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor:  Color(0xFF202020),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Result',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
              padding: EdgeInsets.only(top:25),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              color:  Color(0xFF202020),
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Body Mass Weight",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffBB86FC),
                    ),
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      // color: Colors.green,
                    ),
                  ),
                  Text(
                    statusNumber,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: Color(0xFF202020),
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Basal Metabolic Rate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                       color: Color(0xffBB86FC),
                    ),
                  ),
                  Text(
                    "BMR: "+bmr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Daily Calorie Required",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    currentCalorie,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "(As per Activity)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Daily Calorie Required",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    goalCalorie,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "(As per Activity)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: RawMaterialButton(
          //     child: Text(
          //       'RECALCULATE',
          //       style: TextStyle(
          //           fontSize: 27,
          //           fontFamily: 'Roboto',
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white),
          //     ),
          //     fillColor: Color(0xffBB86FC),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     padding: EdgeInsets.all(5),
          //   ),
          // ),
          ButtonTheme(
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 7),
            child: FlatButton(
              color: Color(0xffbb86fc),
              child: Text(
                'Recalculate',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>InputPage()), (Route<dynamic> route) => false,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
