import 'package:flutter/material.dart';
import 'dart:math';

import 'icons_screen.dart';
import 'object_transactions.dart';

typedef CallbackTransaction = void Function(ObjectTransaction);

Random rdm = Random();

class Buttons extends StatelessWidget {
  Buttons(this._transac, this.addTransaction);

  List<ObjectTransaction> _transac;
  final CallbackTransaction addTransaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [Color(0xFFA3FCBB), Color(0xFF1FD4EA)]),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                  label: Text('Depósito'),
                  icon: Icon(MyFlutterApp.plus_box),
                  onPressed: () {
                    ObjectTransaction a = ObjectTransaction(
                        true, rdm.nextDouble() * (999.99 - 0.01) + 0.01);
                    addTransaction(a);
                  },
                ),
              ),
              Text(" "),
              Expanded(
                child: TextButton.icon(
                  label: Text('Saque'),
                  icon: Icon(MyFlutterApp.minus_box),
                  onPressed: () {
                    ObjectTransaction a = ObjectTransaction(
                        false, rdm.nextDouble() * (999.99 - 0.01) + 0.01);
                    addTransaction(a);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
