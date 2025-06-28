import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/data/line_chart_data.dart';
import 'package:fitness_dashboard_ui_recreate/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final spots = LinetData.spots;
    final leftTitles = LinetData.leftTitle;
    final bottomTitles = LinetData.bottomTitle;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Step Overview",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: defaultPadding),
            AspectRatio(
              aspectRatio: isMobile ? 30 / 15 : 16 / 6,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  minY: 0,
                  maxX: 120,
                  maxY: 100,
                  // gridData: FlGridData(show: false),
                  // borderData: FlBorderData(show: false),
                  // lineTouchData: LineTouchData(handleBuiltInTouches: true),
                  titlesData: FlTitlesData(
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: 20,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          return SideTitleWidget(
                            meta: meta,
                            child: Text(leftTitles[index].toString()),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 10,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          return SideTitleWidget(
                            meta: meta,
                            child: Text(bottomTitles[index].toString()),
                          );
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: spots,
                      isCurved: true,
                      color: selectionColor,
                      barWidth: 2.5,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            selectionColor.withValues(alpha: 0.5),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
