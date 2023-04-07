class Goal {
  var _title;
  var _frequency;
  int _activityAmount;
  var dateCompleted = [];
  List frequencyOptions = ["Dagligen", "Veckovis", "Månadsvis"];

  Goal(this._title, this._frequency, this._activityAmount);

  String get title => _title;
  String get fre => _frequency;
  int get amount => _activityAmount;

  addDateCompleted(DateTime date) {
    dateCompleted.add(date);
  }

  String getCurrentActivity() {
    if (_frequency == "Dagligen") {
      DateTime now = DateTime.now();
      DateTime today = DateTime(now.year, now.month, now.day);
      int amoutCompletedToday = 0;
      for (DateTime date in dateCompleted) {
        if (date.isAfter(today)) {
          amoutCompletedToday++;
        }
      }
      return amoutCompletedToday.toString();
    } else if (_frequency == "Veckovis") {
      DateTime now = DateTime.now();
      DateTime today = DateTime(now.year, now.month, now.day);
      int amoutCompletedThisWeek = 0;

      return "skall bli veckovis inte klar än";
    } else {
      return "skall bli månadsvis inte klar än";
    }
  }
}
