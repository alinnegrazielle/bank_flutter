import 'package:flutter/material.dart';

// import 'saques_design.dart';
// import 'depositos_design.dart';

// class ListTransactions extends StatelessWidget {
//   const ListTransactions({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 10,
//                   ),
//                   child: Deposito(),
//                 ),
//                 ValorDeposito(valor: 200.09),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 10,
//                   ),
//                   child: Deposito(),
//                 ),
//                 ValorDeposito(valor: 19.20),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 10,
//                   ),
//                   child: Saque(),
//                 ),
//                 ValorSaque(valor: 50),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 10,
//                   ),
//                   child: Saque(),
//                 ),
//                 ValorSaque(valor: 15.92),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 10,
//                   ),
//                   child: Deposito(),
//                 ),
//                 ValorDeposito(valor: 230.23),
//               ],
//             ),
//           ],
//         ));
//   }
// }
