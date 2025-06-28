import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/data/schedule_data.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = ScheduleData.list;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Schedule"),
        const SizedBox(height: defaultPadding),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final data = list[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              data.date,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                        Icon(Icons.notification_add)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
