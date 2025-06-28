import 'package:fitness_dashboard_ui_recreate/models/graph_model.dart';
import 'package:flutter/material.dart';

class BargraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BargraphModel({
    required this.label,
    required this.color,
    required this.graph,
  });
}
