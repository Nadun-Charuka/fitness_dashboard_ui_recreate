import 'package:fitness_dashboard_ui_recreate/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fitness Dashboard UI",
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
