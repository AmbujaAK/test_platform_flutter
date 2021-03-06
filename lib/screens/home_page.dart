import 'package:flutter/material.dart';
import 'package:test_platform/components/appbar/app_bar.dart';
import 'package:test_platform/components/drawer/collapsing_navigation_drawer.dart';
import 'package:test_platform/components/switch_card.dart';

class HomePage extends StatelessWidget {
  List<Expanded> loadCard(int counts) {
    List<Expanded> listOfCards = [];
    for (int i = 0; i < counts; i++) {
      listOfCards.add(
        Expanded(
          child: SwitchCard(
            color: Colors.black12,
          ),
        ),
      );
    }

    return listOfCards;
  }

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
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: loadCard(2),
            ),
          )
        ],
      ),
    );
  }
}
