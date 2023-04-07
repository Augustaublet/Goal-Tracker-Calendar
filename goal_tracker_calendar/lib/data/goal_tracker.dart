import 'package:flutter/cupertino.dart';

import 'goal.dart';

class GoalTracker extends ChangeNotifier {
  List<Goal> _goals = [];
  GoalTracker()
      : _goals = [Goal("Träna", "veckovis", 3), Goal("Läsa", "dagligen", 1)];

  List<Goal> get goals => _goals;

  void addGoal(Goal goal) {
    _goals.add(goal);
    notifyListeners();
  }

  void removeGoal(Goal goal) {
    _goals.remove(goal);
    notifyListeners();
  }

  void updateGoal(Goal goal) {
    notifyListeners();
  }
}
