import 'package:flutter/material.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/Transaction_widgets/credit_transaction.dart';
import 'package:q_savings_app/screens/my_savings_page/Widgets/Transaction_widgets/debit_transaction.dart';

class AllTransaction extends StatelessWidget {
  const AllTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 60,
            child: DebitTransaction(),
          ),
          Expanded(
            child: CreditTransaction(),
          )
        ],
      ),
    );
  }
}
