import 'package:flutter/material.dart';
import 'app_icons.dart';
import 'package:intl/intl.dart';

class Deposito extends StatefulWidget {
  const Deposito({
    Key key,
  }) : super(key: key);

  @override
  _DepositoState createState() => _DepositoState();
}

class _DepositoState extends State<Deposito> {
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

class ValorDeposito extends StatelessWidget {
  final double valor;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  ValorDeposito({
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
            Icon(Icons.add, color: Color(0xFF454545)),
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
