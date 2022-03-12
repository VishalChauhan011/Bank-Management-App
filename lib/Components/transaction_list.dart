import 'package:banking_app/Components/transaction_card.dart';
import 'package:banking_app/constants/colors_constant.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        TransactionCard(
          transactionIcon: 'assets/svg/iconuber.svg',
          transactionID: 'Uber Drive',
          transactionDate: '10-03-2022',
          transactionAmount: '-₹700.00',
          amountColor: kBlueColor,
        ),
        TransactionCard(
          transactionIcon: 'assets/svg/nike.svg',
          transactionID: 'Nike',
          transactionDate: '05-03-2022',
          transactionAmount: '-₹3000.00',
          amountColor: kBlueColor,
        ),
        TransactionCard(
          transactionIcon: 'assets/svg/nike.svg',
          transactionID: 'Steve',
          transactionDate: '03-03-2022',
          transactionAmount: '+₹5000.00',
          amountColor: kPinkColor,
        ),
        TransactionCard(
          transactionIcon: 'assets/svg/nike.svg',
          transactionID: 'Nike',
          transactionDate: '05-03-2022',
          transactionAmount: '-₹3000.00',
          amountColor: kBlueColor,
        ),
        TransactionCard(
          transactionIcon: 'assets/svg/nike.svg',
          transactionID: 'Steve',
          transactionDate: '03-03-2022',
          transactionAmount: '+₹5000.00',
          amountColor: kPinkColor,
        ),
      ],
    );
  }
}
