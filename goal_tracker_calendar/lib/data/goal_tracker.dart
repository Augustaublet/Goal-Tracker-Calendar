import 'package:flutter/cupertino.dart';

import 'goal.dart';

class GoalTracker extends ChangeNotifier {
  List<Goal> _goals = [];
  GoalTracker() {
    _goals = [
      Goal("Träna", "Dagligen", 3),
      Goal("Läsa", "Dagligen", 1)
    ]; // för testning
    _goals[0].addDateCompleted(DateTime.now()); // för testning
    print(_goals[0].getCurrentActivity()); // för testning
  }
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
