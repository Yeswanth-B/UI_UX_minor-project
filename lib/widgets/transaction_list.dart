import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'Groceries', amount: 50.0, date: DateTime.now()),
    Transaction(id: 't2', title: 'Rent', amount: 500.0, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        final tx = transactions[index];
        return Card(
          child: ListTile(
            title: Text(tx.title),
            subtitle: Text(tx.date.toString()),
            trailing: Text('\$${tx.amount}'),
          ),
        );
      },
    );
  }
}
