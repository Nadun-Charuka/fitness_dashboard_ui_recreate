import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
