import 'package:fitness_dashboard_ui_recreate/widgets/dashboard_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/side_menu_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              )),
          Expanded(
            flex: 7,
            child: DashboardWidget(),
          ),
          Expanded(
            flex: 2,
            child: SummaryWidget(),
          )
        ],
      ),
    );
  }
}
