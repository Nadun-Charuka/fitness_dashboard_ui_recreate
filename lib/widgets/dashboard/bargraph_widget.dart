import 'package:fitness_dashboard_ui_recreate/constants/constant.dart';
import 'package:fitness_dashboard_ui_recreate/data/bargraph_data.dart';
import 'package:fitness_dashboard_ui_recreate/models/bargraph_model.dart';
import 'package:fitness_dashboard_ui_recreate/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BargraphWidget extends StatelessWidget {
  const BargraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final graphs = BargraphData.graphs;
    return SizedBox(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: graphs.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile
                ? 1
                : isTablet
                    ? 2
                    : 3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: 5 / 4),
        itemBuilder: (BuildContext context, int index) {
          final BargraphModel data = BargraphData.graphs[index];

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Text(data.label),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: SizedBox(
                        child: BarChart(
                          BarChartData(
                            barGroups: data.graph.map((graph) {
                              return BarChartGroupData(
                                x: graph.x.toInt(),
                                barRods: [
                                  BarChartRodData(
                                    toY: graph.y.toDouble(),
                                    color: data.color,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ],
                              );
                            }).toList(),
                            titlesData: FlTitlesData(
                              rightTitles: AxisTitles(),
                              topTitles: AxisTitles(),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 2,
                                  reservedSize: 22,
                                  getTitlesWidget: (value, meta) {
                                    final String text;

                                    switch (value.toInt()) {
                                      case 0:
                                        text = "0";
                                        break;

                                      case 2:
                                        text = "2";
                                        break;

                                      case 4:
                                        text = "4";
                                        break;

                                      case 6:
                                        text = "6";
                                        break;

                                      case 8:
                                        text = "8";
                                        break;
                                      case 9:
                                        text = "9";
                                        break;
                                      case 10:
                                        text = "10";
                                        break;
                                      default:
                                        text = "0";
                                    }
                                    return Text(text);
                                  },
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                axisNameWidget: Text("Day"),
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    final String text;

                                    switch (value.toInt()) {
                                      case 0:
                                        text = "Sun";
                                        break;
                                      case 1:
                                        text = "Mon";
                                        break;
                                      case 2:
                                        text = "Tue";
                                        break;
                                      case 3:
                                        text = "Wen";
                                        break;
                                      case 4:
                                        text = "Tur";
                                        break;
                                      case 5:
                                        text = "Fr";
                                        break;
                                      case 6:
                                        text = "Sat";
                                        break;
                                      default:
                                        text = "day";
                                    }
                                    return Text(text);
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            gridData: FlGridData(show: false),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
