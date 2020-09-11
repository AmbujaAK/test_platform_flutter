import 'package:flutter/material.dart';

class SwitchCard extends StatelessWidget {
  SwitchCard({@required this.color, this.cardChild, this.onPress, this.width});

  final Color color;
  final Widget cardChild;
  final Function onPress;
  final double width;

  @override
  Widget build(BuildContext context) {
    print(width);
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width != null ? double.infinity : width,
        height: 120.0,
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
