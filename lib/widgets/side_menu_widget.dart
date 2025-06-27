import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final menu = SideMenuData.menu;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 80),
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          final item = menu[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: currentIndex == index
                        ? selectionColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        item.icon,
                        color:
                            currentIndex == index ? Colors.black : Colors.grey,
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 16,
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
