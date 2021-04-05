import 'package:flutter/material.dart';
import 'icons_screen.dart';
import 'package:intl/intl.dart';

class Deposit extends StatefulWidget {
  const Deposit({
    Key key,
  }) : super(key: key);

  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              MyFlutterApp.plus,
              size: 34,
              color: Color(0xFF87FAA5),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Depósito',
                  style: TextStyle(
                    fontFamily: 'FuturaBook',
                    fontSize: 19,
                    color: Color(0xFF0AACA0),
                  ),
                ),
                Text(
                  '30/03/2021',
                  style: TextStyle(
                    fontFamily: 'FuturaLight',
                    fontSize: 11,
                    color: Color(0xFF888888),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class DepositValue extends StatelessWidget {
  final double value;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  DepositValue({
    Key key,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.add, color: Color(0xFF454545)),
            Text(
              currencyFormatter.format(value),
              style: TextStyle(
                fontFamily: 'FuturaHeavy',
                fontSize: 18,
                color: Color(0xFF454545),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ],
    );
  }
}
