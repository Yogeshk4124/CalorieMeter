import 'package:flutter/cupertino.dart';

class ImageTextCard extends StatelessWidget {
  ImageTextCard({@required this.text, this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFFDCDCDC),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
