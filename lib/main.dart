import 'package:flutter/material.dart';
import 'package:test_platform/screens/home_page.dart';
import 'package:test_platform/screens/project_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => HomePage(),
    '/project': (context) => ProjectPage(
          text: 'project',
        ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
