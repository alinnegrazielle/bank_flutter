import 'package:flutter/material.dart';

import 'list_transactions.dart';
import 'buttons.dart';
import 'object_transactions.dart';


class ExtratoAndList extends StatelessWidget {
  ExtratoAndList(this._transac, this.addTransaction);

  List<ObjectTransaction> _transac;
  final CallbackTransaction addTransaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(25.0),
      height: (380),
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
          ListTransactions(_transac),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Buttons(_transac, addTransaction),
          )
        ],
      )),
    );
  }
}
