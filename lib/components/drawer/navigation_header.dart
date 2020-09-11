import 'package:flutter/material.dart';
import 'package:test_platform/utils/theme/drawer_theme.dart';

class NavigationHeader extends StatefulWidget {
  NavigationHeader({this.width, this.isCollapsed, this.onPressed});
  final width;
  final isCollapsed;
  final Function onPressed;

  @override
  _NavigationHeaderState createState() => _NavigationHeaderState();
}

class _NavigationHeaderState extends State<NavigationHeader> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Center(
        child: Container(
          width: widget.width,
          height: drawerHeaderHeight,
          child: widget.isCollapsed
              ? Icon(
                  Icons.close,
                  color: selectedColor,
                )
              : Icon(
                  Icons.menu,
                  color: Colors.white30,
                ),
          color: drawerHeaderColor,
        ),
      ),
    );
  }
}
