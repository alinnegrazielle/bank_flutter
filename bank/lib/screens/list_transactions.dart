import 'package:flutter/material.dart';
import 'depositos_design.dart';
import 'saques_design.dart';
import 'package:intl/intl.dart';
import 'object_transactions.dart';

class ListTransactions extends StatelessWidget {
  ListTransactions(this._transac);

  List<ObjectTransaction> _transac;
  final currencyFormatter = NumberFormat('#,##0.00', 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: _transac.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 0),
                  child: _transac[(_transac.length - 1) - index].isDeposito
                      ? Deposito()
                      : Saque(),
                ),
                _transac[(_transac.length - 1) - index].isDeposito
                    ? ValorDeposito(
                        valor: _transac[(_transac.length - 1) - index].valor)
                    : ValorSaque(
                        valor: _transac[(_transac.length - 1) - index].valor),
              ],
            );
          },
        ),
      ),
    );
  }
}
