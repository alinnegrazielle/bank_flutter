import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Balance extends StatelessWidget {
  final double balance;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  Balance({
    Key key,
    @required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('SALDO TOTAL',
              style: TextStyle(
                color: Color(0xFF176770),
                fontSize: 11,
                fontFamily: 'FuturaLight',
                letterSpacing: 4,
              )),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            r'R$',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'FuturaBook',
              fontSize: 18,
            ),
          ),
          Text(
            currencyFormatter.format(balance),
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'FuturaHeavy',
              fontWeight: FontWeight.w900,
              fontSize: 40,
            ),
          ),
        ],
      ),
    ]);
  }
}
