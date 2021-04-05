import 'package:flutter/material.dart';
import 'icons_screen.dart';
import 'package:intl/intl.dart';

class Withdrawal extends StatefulWidget {
  const Withdrawal({
    Key key,
  }) : super(key: key);

  @override
  _WithdrawalState createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              MyFlutterApp.minus,
              size: 34,
              color: Color(0xFFFF8C8C),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saque',
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

class WithdrawalValue extends StatelessWidget {
  final double value;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  WithdrawalValue({
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
            Icon(Icons.remove, color: Color(0xFF454545)),
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
