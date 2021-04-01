import 'package:flutter/material.dart';
import 'list_transactions.dart';

class ExtratoAndList extends StatelessWidget {
  const ExtratoAndList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ListTransactions(),
        ],
      )),
    );
  }
}
