import 'package:flutter/material.dart';
import 'transac_intializer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'buttons.dart';

import 'top_screen.dart';
import 'extract_scren.dart';
import 'object_transactions.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<ObjectTransaction> _transac = <ObjectTransaction>[];

  double total_balance = 0;

  void addTransaction(ObjectTransaction b) {
    setState(() {
      if (b.isDeposit) {
        total_balance = total_balance + b.value;
        _transac.add(b);
      } else {
        if ((total_balance - b.value) >= 0) {
          total_balance = total_balance - b.value;
          _transac.add(b);
        } else {
          return Alert(
            context: context,
            type: AlertType.warning,
            title: "Saldo insuficiente",
            desc:
                "Sua conta não tem saldo suficiente para fazer o saque solicitado.",
            buttons: [
              DialogButton(
                child: Text(
                  "VOLTAR",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                width: 120,
              )
            ],
          ).show();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        bottomNavigationBar:
            SizedBox(height: 60, child: Buttons(_transac, addTransaction)),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'BANCO EXEMPLO S/A',
            style: TextStyle(
              fontFamily: 'Futura',
              color: Colors.white,
              fontSize: 13,
              letterSpacing: 2,
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          height: size.height,
          child: Column(
            //toda a tela
            children: [
              Top(total_balance),
              Expanded(
                child: Extract(_transac, addTransaction),
              )
            ],
          ),
        ),
      ),
    );
  }
}
