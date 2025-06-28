import 'package:fitness_dashboard_ui_recreate/models/bargraph_model.dart';
import 'package:fitness_dashboard_ui_recreate/models/graph_model.dart';
import 'package:flutter/material.dart';

class BargraphData {
  static final List<BargraphModel> graphs = [
    BargraphModel(
      label: "Activity Level",
      color: Color(0xFFFEB95A),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
    ),
    BargraphModel(
      label: "Nutrition",
      color: Color(0xFFF2C8ED),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 6),
        GraphModel(x: 5, y: 7),
      ],
    ),
    BargraphModel(
      label: "Hydration Level",
      color: Color(0xFF20AEF3),
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
  ];
}
