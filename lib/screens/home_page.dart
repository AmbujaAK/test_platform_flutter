import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test platform'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              child: Text('Hello'),
            ),
          )
        ],
      )),
    );
  }
}
