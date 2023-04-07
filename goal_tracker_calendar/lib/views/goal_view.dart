import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/goal.dart';
import '../data/goal_tracker.dart';

class GoalView extends StatelessWidget {
  final List<Goal> goals;

  const GoalView({super.key, required this.goals});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildGoalTileList(context, goals),
        ],
      ),
    );
  }

  Widget buildGoalTileList(context, goals) {
    List<Widget> children = [];
    for (Goal goal in goals) {
      children.add(_goalListTile(context, goal));
    }
    return Column(
      children: children,
    );
  }

  Widget _goalListTile(context, Goal goal) {
    return ListTile(
      title: Text(goal.title),
      trailing: Text(goal.amount.toString()),
    );
  }
}
