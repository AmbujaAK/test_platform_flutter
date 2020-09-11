import 'package:flutter/material.dart';
import 'package:test_platform/components/drawer/collapsing_list_tile.dart';
import 'package:test_platform/utils/theme/drawer_theme.dart';
import 'navigation_header.dart';
import '../../models/navigation_model.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    widthAnimation = Tween<double>(begin: minDrawerWidth, end: maxDrawerWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Material(
              child: Container(
                height: double.infinity,
                width: widthAnimation.value,
                color: drawerBackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NavigationHeader(
                      onPressed: () {
                        setState(() {
                          isCollapsed = !isCollapsed;
                          isCollapsed
                              ? _animationController.forward()
                              : _animationController.reverse();
                        });
                      },
                      isCollapsed: isCollapsed,
                      width: widthAnimation.value,
                    ),

                    Divider(
                      height: 10.0,
                      color: selectedColor,
                    ),

                    // list of menu
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, counter) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: CollapsingListTile(
                                widthAnimation: widthAnimation,
                                animationController: _animationController,
                                icon: navigationItems[counter].icon,
                                title: navigationItems[counter].title,
                                isSelected: selectedIndex == counter,
                                onTap: () {
                                  setState(() {
                                    selectedIndex = counter;
                                    Navigator.pushNamed(context, '/project');
                                  });
                                },
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, counter) {
                          return Divider(
                            height: 8.0,
                            color: Colors.red,
                          );
                        },
                        itemCount: navigationItems.length,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
