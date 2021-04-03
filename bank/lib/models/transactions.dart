class Transaction {
  String name = '0';
  double amount = 0.00;

  void applyOperation(String operation) {
    name += operation;
  }

  // String get value {
  //   return _value;
  // }
//   double value;

  Transaction({this.name, this.amount});
}
