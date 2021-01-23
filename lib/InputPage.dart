import 'package:caloriemeter/Calculate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AimPage.dart';
import 'ImageTextCard.dart';
import 'ReusableCard.dart';

// const Color inactiveCard = Color(0xFF303030);
// const Color activeCard = Color(0xFF424242);
const Color inactiveCard = Color(0xFF303030);
const Color activeCard = Color(0xFF202020);

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

// ignore: camel_case_types
class _InputPageState extends State<InputPage> {
  Color maleCard = inactiveCard,
      femaleCard = inactiveCard;
  int height = 180,
      weight = 60,
      age = 25;
  String gender="";
  void updateGenderSelected(int x) {
    if (x == 1) {
      gender="Male";
      maleCard = activeCard;
      femaleCard = inactiveCard;
    } else {
      gender="Female";
      maleCard = inactiveCard;
      femaleCard = activeCard;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
//        backgroundColor: Color(0xFF313131),
      backgroundColor:  Color(0xFF202020),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print("FEMALE");
                        updateGenderSelected(2);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCard,
                      card: ImageTextCard(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print("MALE");
                        updateGenderSelected(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleCard,
                      card: ImageTextCard(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCard,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFDCDCDC),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFDCDCDC),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                      // activeTrackColor: Color(0xffC38FFF),
                      // thumbColor: Color(0xffC38FFF),
                      // inactiveTrackColor: Color(0x55C38FFF),
                      activeTrackColor: Color(0xff03DAC5),
                      thumbColor: Color(0xff03DAC5),
                      inactiveTrackColor: Color(0x5503DAC5),
                      overlayColor: Color(0x5503DAC5),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 240.0,
                      onChanged: (double x) {
                        setState(() {
                          height = x.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCard,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFDCDCDC),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFFDCDCDC),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCard,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFDCDCDC),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFFDCDCDC),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child:Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Text(
          //         "Exercise Scale",
          //       ),
          //
          //     ],
          //
          //   ),
          //
          // ),
          // GestureDetector(
          //   onTap: () {
          //     // Calculate c = new Calculate(height: height, weight: weight);
          //     // c.calculateBMI();
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(
          //     //     builder: (context) =>
          //     //         Result(status: c.getResult(),
          //     //             msg: c.getInterpretation(),
          //     //             statusNumber: c.calculateBMI()),
          //     //   ),
          //     // );
          //     // Navigator.pushNamed(context, 'AimPage')
          //     Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) =>
          //                 AimPage(height:height ,
          //                     weight: weight,
          //                     gender: gender,
          //                     age:age,
          //                 ),
          //           ),
          //         );
          //   },
          //   child: Container(
          //     color: Color(0xffBB86FC),
          //     // color: Color(0xffC38FFF),
          //     child: Center(
          //       child: Text(
          //         'Next',
          //         style: TextStyle(
          //             fontSize: 27,
          //             fontFamily: 'Roboto',
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white),
          //       ),
          //     ),
          //     margin: EdgeInsets.only(top: 10),
          //     width: double.infinity,
          //     // height: 60,
          //   ),
          // ),
          ButtonTheme(
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 7),
            child: FlatButton(
              color: Color(0xffbb86fc),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AimPage(height:height ,
                                      weight: weight,
                                      gender: gender,
                                      age:age,
                                  ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      fillColor: Color(0x55DCDCDC),
      shape: CircleBorder(),
    );
  }
}
