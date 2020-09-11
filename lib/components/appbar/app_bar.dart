import 'package:flutter/material.dart';
import 'package:test_platform/components/appbar/app_bar_icon.dart';
import 'package:test_platform/utils/constants.dart';
import 'package:test_platform/utils/theme/drawer_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({this.preferredSize});

  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 10,
      backgroundColor: drawerBackgroundColor,
      elevation: 0.5,
      title: new Text(Constants.appTitle),
      actions: <Widget>[
        AppBarIcon(icon: Icons.location_on),
        AppBarIcon(icon: Icons.timelapse),
        AppBarIcon(icon: Icons.chat_bubble),
        AppBarIcon(icon: Icons.notifications),
        AppBarIcon(icon: Icons.timelapse),
        SizedBox(width: 12),
        Row(
          children: <Widget>[
            AppBarIcon(icon: Icons.exit_to_app),
            Text("Logout")
          ],
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
