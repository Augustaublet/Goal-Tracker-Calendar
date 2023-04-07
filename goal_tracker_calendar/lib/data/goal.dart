class Goal {
  var _title;
  var _howOften;
  int _amount;
  var dateCompleted = [];

  Goal(this._title, this._howOften, this._amount);

  String get title => _title;
  String get howOften => _howOften;
  int get amount => _amount;

  addDateCompleted(DateTime date) {
    dateCompleted.add(date);
  }
}
