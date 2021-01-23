import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget card;

  ReusableCard({@required this.color, this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
