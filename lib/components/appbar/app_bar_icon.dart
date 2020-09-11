import 'package:flutter/material.dart';
import 'package:test_platform/utils/theme/drawer_theme.dart';

class AppBarIcon extends StatefulWidget {
  final IconData icon;
  final String iconFor;
  final Color iconColor;

  AppBarIcon({Key key, this.icon, this.iconFor, this.iconColor});

  @override
  _AppBarIconState createState() => _AppBarIconState();
}

class _AppBarIconState extends State<AppBarIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: drawerBackgroundColor,
      child: Center(
        child: Ink(
          child: IconButton(
            icon: Icon(widget.icon),
            color: Colors.white38,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
