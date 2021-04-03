import 'package:flutter/material.dart';

class Extrato extends StatelessWidget {
  final String text;

  Extrato(this.text);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(25.0),
      height: (315),
      child: (Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 20),
                child: Text(
                  'Extrato',
                  style: TextStyle(
                    color: Color(0xFF454545),
                    fontSize: 24,
                    fontFamily: 'FuturaHeavy',
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            child: Column(
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
          // ListTransactions(),
        ],
      )),
    ));
  }
}
