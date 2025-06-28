import 'package:fitness_dashboard_ui_recreate/utils/responsive.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/dashboard_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/side_menu_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop ? SideMenuWidget() : null,
      endDrawer: !isDesktop ? SummaryWidget() : null,
      body: Row(
        children: [
          if (isDesktop)
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
            ),
          Expanded(
            flex: 7,
            child: DashboardWidget(),
          ),
          if (isDesktop)
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SummaryWidget(),
              ),
            ),
        ],
      ),
    );
  }
}
