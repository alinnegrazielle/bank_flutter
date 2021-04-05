import 'package:flutter/material.dart';
import 'deposits_screen.dart';
import 'withdrawals_screen.dart';
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
                  child: _transac[(_transac.length - 1) - index].isDeposit
                      ? Deposit()
                      : Withdrawal(),
                ),
                _transac[(_transac.length - 1) - index].isDeposit
                    ? DepositValue(
                        value: _transac[(_transac.length - 1) - index].value)
                    : WithdrawalValue(
                        value: _transac[(_transac.length - 1) - index].value),
              ],
            );
          },
        ),
      ),
    );
  }
}
