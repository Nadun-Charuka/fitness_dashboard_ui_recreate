import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/summary/piechart_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/summary/schedule_widget.dart';
import 'package:fitness_dashboard_ui_recreate/widgets/summary/summary_details_widget.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              PiechartWidget(),
              SizedBox(height: defaultPadding),
              SummaryDetailsWidget(),
              SizedBox(height: defaultPadding),
              ScheduleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
