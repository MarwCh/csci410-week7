class Employee {
  int _hours = 0;
  double _rate = 0;
  final double tax = 0.1; // default 10% tax

  Employee(int hours, double rate) {
    if (hours <= 0 || rate <= 0) {
      throw Exception('negative values not allowed');
    }
    _hours = hours;
    _rate = rate;
  }

  double netSalary() {
    return (_hours * _rate) * (1 - tax);
  }
}