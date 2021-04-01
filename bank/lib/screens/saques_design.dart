import 'package:flutter/material.dart';
import 'app_icons.dart';
import 'package:intl/intl.dart';

class Saque extends StatelessWidget {
  const Saque({
    Key key,
  }) : super(key: key);

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

class ValorSaque extends StatelessWidget {
  final double valor;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  ValorSaque({
    Key key,
    @required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.remove),
            Text(
              currencyFormatter.format(valor),
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
