import 'package:caloriemeter/ReusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Calculate.dart';
import 'Result.dart';

const Color inactiveCard =  Color(0xFF202020);
var exerciseList = [
  "Little to no exercise",
  "Light exercise (1–3 days per week)",
  "Moderate exercise (3–5 days per week)",
  "Heavy exercise (6–7 days per week)",
  "Very heavy exercise (twice per day)"
];
var goalList = [
  "Maintain current weight",
  "Lose 0.5kg per week",
  "Lose 1kg per week",
  "Gain 0.5kg per week",
  "Gain 1kg per week"
];

class AimPage extends StatefulWidget {
  final int height, weight, age;
  final String gender;

  AimPage(
      {@required this.height,
      @required this.weight,
      @required this.age,
      @required this.gender});

  @override
  _AimPageState createState() => _AimPageState();
}

class _AimPageState extends State<AimPage> {
  String _activity = exerciseList[0];
  String _goal = goalList[0];
  int height, weight, age;
  String gender;

  @override
  void initState() {
    height = widget.height;
    weight = widget.weight;
    age = widget.age;
    gender = widget.gender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor:  Color(0xFF202020),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                color: inactiveCard,
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Exercise Scale",
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Roboto',
                            color: Color(0xffBB86FC))),
                    ListTile(
                      title: Text(exerciseList[0],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: exerciseList[0],
                        groupValue: _activity,
                        onChanged: (String value) {
                          setState(() {
                            _activity = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(exerciseList[1],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: exerciseList[1],
                        groupValue: _activity,
                        onChanged: (String value) {
                          setState(() {
                            _activity = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(exerciseList[2],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: exerciseList[2],
                        groupValue: _activity,
                        onChanged: (String value) {
                          setState(() {
                            _activity = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(exerciseList[3],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: exerciseList[3],
                        groupValue: _activity,
                        onChanged: (String value) {
                          setState(() {
                            _activity = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(exerciseList[4],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: exerciseList[4],
                        groupValue: _activity,
                        onChanged: (String value) {
                          setState(() {
                            _activity = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: inactiveCard,
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Calorie Goal",
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Roboto',
                          color: Color(0xffBB86FC)),
                    ),
                    ListTile(
                      title: Text(goalList[0],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: goalList[0],
                        groupValue: _goal,
                        onChanged: (String value) {
                          setState(() {
                            _goal = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(goalList[1],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: goalList[1],
                        groupValue: _goal,
                        onChanged: (String value) {
                          setState(() {
                            _goal = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(goalList[2],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: goalList[2],
                        groupValue: _goal,
                        onChanged: (String value) {
                          setState(() {
                            _goal = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(goalList[3],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: goalList[3],
                        groupValue: _goal,
                        onChanged: (String value) {
                          setState(() {
                            _goal = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(goalList[4],style: TextStyle(fontSize: 18),),
                      leading: Radio(
                        value: goalList[4],
                        groupValue: _goal,
                        onChanged: (String value) {
                          setState(() {
                            _goal = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ButtonTheme(
              minWidth: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 7),
              child: FlatButton(
                color: Color(0xffbb86fc),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Calculate c = new Calculate(
                      height: height,
                      weight: weight,
                      age: age,
                      gender: gender,
                      goal: _goal,
                      activity: _activity);
                  c.calculateBMI();
                  c.calculateBMR();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        status: c.getResult(),
                        msg: c.getInterpretation(),
                        statusNumber: c.calculateBMI(),
                        currentCalorie: c.getActivity(),
                        goalCalorie: c.getGoal(),
                        bmr: c.calculateBMR(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
