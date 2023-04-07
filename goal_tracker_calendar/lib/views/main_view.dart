import 'package:flutter/material.dart';
import 'package:goal_tracker_calendar/data/goal_tracker.dart';
import 'package:goal_tracker_calendar/views/goal_view.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Main View App Bar"),
        ),
        body: Consumer<GoalTracker>(
            builder: (context, trackerProvider, _) =>
                GoalView(goals: trackerProvider.goals)));
  }
}
