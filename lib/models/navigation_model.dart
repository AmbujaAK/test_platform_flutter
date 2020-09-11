import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
    title: "Home",
    icon: Icons.home,
  ),
  NavigationModel(title: "Self Service", icon: Icons.person),
  NavigationModel(
    title: "Project",
    icon: Icons.computer,
  ),
  NavigationModel(title: "Delivery Tracker", icon: Icons.art_track),
  NavigationModel(title: "Delivery Acceptence", icon: Icons.adjust),
  NavigationModel(title: "Engineer Engagement", icon: Icons.people),
  NavigationModel(title: "Master Data", icon: Icons.developer_board),
  NavigationModel(title: "Reports", icon: Icons.library_books),
  NavigationModel(title: "Bot Store", icon: Icons.store)
];
