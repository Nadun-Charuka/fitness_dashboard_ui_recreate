import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:flutter/material.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Summary Details"),
        SizedBox(height: defaultPadding),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildDetails('Cal', '305'),
              buildDetails('Steps', '10983'),
              buildDetails('Distance', '7km'),
              buildDetails('Sleep', '7hr'),
            ],
          ),
        )
      ],
    );
  }

  Widget buildDetails(String key, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            key,
            style: const TextStyle(fontSize: 11, color: Colors.grey),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
