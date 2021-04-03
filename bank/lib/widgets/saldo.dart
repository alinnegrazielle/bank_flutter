import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Saldo extends StatelessWidget {
  final double saldo;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  Saldo({
    Key key,
    @required this.saldo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: double.infinity,
        padding: EdgeInsets.all(25.0),
        height: (240),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SALDO TOTAL',
                  style: TextStyle(
                    color: Color(0xFF176770),
                    fontSize: 11,
                    fontFamily: 'FuturaLight',
                    letterSpacing: 4,
                  ),
                ),
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
                  currencyFormatter.format(saldo),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FuturaHeavy',
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
