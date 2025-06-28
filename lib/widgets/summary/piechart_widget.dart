import 'package:fitness_dashboard_ui_recreate/data/piechart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PiechartWidget extends StatefulWidget {
  const PiechartWidget({super.key});

  @override
  State<PiechartWidget> createState() => _PiechartWidgetState();
}

class _PiechartWidgetState extends State<PiechartWidget> {
  @override
  Widget build(BuildContext context) {
    final data = PiechartData.paiChartSelectionDatas;
    return (SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              //startDegreeOffset: 45,
              sections: data,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "70%",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "of 100%",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
