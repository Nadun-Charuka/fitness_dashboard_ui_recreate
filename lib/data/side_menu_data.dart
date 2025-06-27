import 'package:fitness_dashboard_ui_recreate/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  static final List<MenuModel> menu = [
    MenuModel(icon: Icons.menu, title: "Dashboard"),
    MenuModel(icon: Icons.person, title: "Profile"),
    MenuModel(icon: Icons.run_circle, title: "Exersice"),
    MenuModel(icon: Icons.settings, title: "Setting"),
    MenuModel(icon: Icons.history, title: "History"),
    MenuModel(icon: Icons.logout, title: "SingOut"),
  ];
}
