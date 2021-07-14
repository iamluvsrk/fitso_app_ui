import 'package:flutter/material.dart';

class Activity {
  Activity(this.iconData, this.title, this.subtitle, this.color);
  final IconData iconData;
  final String title;
  final String subtitle;
  final Color color;
}

List<Activity> activityList = [
  Activity(Icons.sports_basketball, "Basketball", "12 center",
      Color.fromRGBO(239, 219, 205, 0.6)),
  Activity(Icons.sports_cricket, "Cricket", "5 center",
      Color.fromRGBO(255, 246, 217, 0.6)),
  Activity(Icons.sports_football, "Football", "8 center",
      Color.fromRGBO(236, 228, 220, 0.6)),
  Activity(Icons.sports_baseball, "Baseball", "13 center",
      Color.fromRGBO(243, 223, 212, 0.6)),
  Activity(Icons.sports_golf, "Golf", "2 center",
      Color.fromRGBO(222, 247, 254, 0.6)),
  Activity(Icons.sports_handball, "Handball", "11 center",
      Color.fromRGBO(246, 206, 252, 0.6)),
  Activity(Icons.sports_hockey, "Hockey", "14 center",
      Color.fromRGBO(255, 255, 194, 0.6))
];

class ActivityData extends ChangeNotifier {
  // List<Activity> activityList = [
  //   Activity(Icons.sports_basketball, "Basketball", "12 center",
  //       Color.fromRGBO(239, 219, 205, 0.6)),
  //   Activity(Icons.sports_cricket, "Cricket", "5 center",
  //       Color.fromRGBO(255, 246, 217, 0.6)),
  //   Activity(Icons.sports_football, "Football", "8 center",
  //       Color.fromRGBO(236, 228, 220, 0.6)),
  //   Activity(Icons.sports_baseball, "Baseball", "13 center",
  //       Color.fromRGBO(243, 223, 212, 0.6)),
  //   Activity(Icons.sports_golf, "Golf", "2 center",
  //       Color.fromRGBO(222, 247, 254, 0.6)),
  //   Activity(Icons.sports_handball, "Handball", "11 center",
  //       Color.fromRGBO(246, 206, 252, 0.6)),
  //   Activity(Icons.sports_hockey, "Hockey", "14 center",
  //       Color.fromRGBO(255, 255, 194, 0.6))
  // ];
}
