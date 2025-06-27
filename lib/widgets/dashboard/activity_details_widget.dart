import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/data/activity_details_data.dart';
import 'package:flutter/material.dart';

class ActivityDetailsWidget extends StatelessWidget {
  const ActivityDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final activityDetails = ActivityDetailsData.activityDetails;

    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemCount: activityDetails.length,
        itemBuilder: (context, index) {
          final item = activityDetails[index];
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  item.icon,
                  width: 30,
                  height: 30,
                ),
                Text(
                  item.value,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
