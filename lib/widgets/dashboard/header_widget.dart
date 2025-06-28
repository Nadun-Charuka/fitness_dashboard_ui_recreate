import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              onPressed: Scaffold.of(context).openDrawer,
              icon: Icon(Icons.menu),
            ),
          Expanded(
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
          ),
          SizedBox(
            width: 10,
          ),
          if (!Responsive.isDesktop(context))
            InkWell(
              onTap: Scaffold.of(context).openEndDrawer,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset("images/avatar.png"),
              ),
            ),
        ],
      ),
    );
  }
}
