import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/dashboard/activity_details_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/dashboard/bargraph_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/dashboard/header_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/dashboard/line_chart_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: defaultPadding),
            HeaderWidget(),
            SizedBox(height: defaultPadding),
            ActivityDetailsWidget(),
            SizedBox(height: defaultPadding),
            LineChartWidget(),
            SizedBox(height: defaultPadding),
            BargraphWidget(),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
