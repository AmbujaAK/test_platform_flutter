import 'package:flutter/material.dart';
import 'package:test_platform/components/appbar/app_bar.dart';
import 'package:test_platform/components/drawer/collapsing_navigation_drawer.dart';

class ProjectPage extends StatelessWidget {
  final String text;

  ProjectPage({this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 48.0),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Drawer
          CollapsingNavigationDrawer(),
          Text(text)
        ],
      ),
    );
  }
}
