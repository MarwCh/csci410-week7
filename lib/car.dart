class Employee {
  int _hours = 0;
  double _rate = 0;
  final double tax = 0.1; // default 10%

  Employee(int hours, double rate) {
    this.hours = hours;
    this.rate = rate;
  }

  double get rate => _rate;

  set rate(double value) {
    if (value <= 0) {
      throw Exception('Negative values not allowed');
    }
    _rate = value;
  }

  int get hours => _hours;

  set hours(int value) {
    if (value <= 0) {
      throw Exception('Negative values not allowed');
    }
    _hours = value;
  }

  double netSalary() => (_hours * _rate) * (1 - tax);
}