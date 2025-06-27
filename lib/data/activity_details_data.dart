import 'package:fitness_dashboard_ui_recreate/models/activity_details_model.dart';

class ActivityDetailsData {
  static final List<ActivityDetails> activityDetails = [
    ActivityDetails(
        icon: 'assets/icons/burn.png', value: "305", title: "Calories burned"),
    ActivityDetails(
        icon: 'assets/icons/steps.png', value: "10,983", title: "Steps"),
    ActivityDetails(
        icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    ActivityDetails(
        icon: 'assets/icons/sleep.png', value: "7h48m", title: "Sleep"),
  ];
}
