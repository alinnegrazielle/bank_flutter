import 'package:flutter/material.dart';
import 'transac_intializer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'buttons.dart';

import 'top.dart';
import 'extrato_and_list.dart';
import 'object_transactions.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<ObjectTransaction> _transac = <ObjectTransaction>[];

  double saldototal = 0;

  void addTransaction(ObjectTransaction b) {
    setState(() {
      if(b.isDeposito){
        saldototal = saldototal + b.valor;
        _transac.add(b);
      }else{
        if((saldototal - b.valor) >= 0 ){
          saldototal = saldototal - b.valor;
          _transac.add(b);
        }else{
          return Alert(
            context: context,
            type: AlertType.warning,
            title: "Saldo insuficiente",
            desc: "Sua conta não tem saldo suficiente para fazer o saque solicitado.",
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
        bottomNavigationBar: SizedBox(height: 60,
          child: Buttons(_transac, addTransaction)
        ),
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
        body: SizedBox(height: size.height,child: Column(
          //toda a tela
            children: [
              Top(saldototal),
              Expanded(child: ExtratoAndList(_transac, addTransaction) ,)
            ],
          ),
        ), 
      ),
    );
  }
}

// import 'dart:math';
// import 'package:flutter/material.dart';
// import '../models/transactions.dart';

// Random rnd = Random();

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() {
//     return _HomePageState();
//   }
// }

// class _HomePageState extends State<HomePage> {
//   double saldoDepo = 0.00;
//   double saldoSaq = 0.00;
//   List<Transaction> listTransaction = [];

//   @override
//   void initState() {
//     super.initState();
//   }

//   addDeposito() {
//     double deposito = rnd.nextInt(100).toDouble();
//     listTransaction.add(
//       Transaction(title: "Depósito 1", value: deposito),
//     );

//     setState(() {
//       saldoDepo = saldoDepo + deposito;
//     });
//   }

//   addSaque() {
//     double saque = rnd.nextInt(1000).toDouble();
//     listTransaction.add(
//       Transaction(title: "Depósito 1", value: saque),
//     );

//     setState(() {
//       saldoSaq = saldoSaq + saque;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             child: Center(
//               child: Text(
//                 '$saldoDepo',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             child: Center(
//               child: Text(
//                 '$saldoSaq',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           // Container(
//           //   height: 50.0,
//           //   width: 110.0,
//           //   decoration: BoxDecoration(
//           //     color: Colors.greenAccent,
//           //     borderRadius: BorderRadius.only(
//           //       bottomLeft: Radius.circular(22.0),
//           //       topLeft: Radius.circular(22.00),
//           //       bottomRight: Radius.circular(200.0),
//           //     ),
//           //   ),
//           //   child: FlatButton(
//           //     color: Colors.green,
//           //     child: Text(
//           //       'Depósito',
//           //       style: TextStyle(
//           //         fontSize: 20.0,
//           //         color: Colors.white,
//           //       ),
//           //     ),
//           //     onPressed: addDeposito,
//           //   ),
//           // ),
//           // Container(
//           //   height: 50.0,
//           //   width: 110.0,
//           //   decoration: BoxDecoration(
//           //     color: Colors.greenAccent,
//           //     borderRadius: BorderRadius.only(
//           //       bottomLeft: Radius.circular(22.0),
//           //       topLeft: Radius.circular(22.00),
//           //       bottomRight: Radius.circular(200.0),
//           //     ),
//           //   ),
//           //   child: FlatButton(
//           //     color: Colors.green,
//           //     child: Text(
//           //       'Saque',
//           //       style: TextStyle(
//           //         fontSize: 20.0,
//           //         color: Colors.white,
//           //       ),
//           //     ),
//           //     onPressed: addSaque,
//   ),
// ),
//         ],
//       ),
//     );
//   }
// }
