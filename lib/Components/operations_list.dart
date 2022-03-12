import 'package:banking_app/Components/operation_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors_constant.dart';
class OperationList extends StatelessWidget {
  const OperationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.horizontal,

      children: const [
         OperationCard(
          cardColor: kBlueColor,
           svgPath: 'assets/svg/moneytransfer.svg',
           firstName: 'Money',
           secondName: 'Transfer',
           textColor: kWhiteColor,
        ),
        OperationCard(
          cardColor: kWhiteColor,
          svgPath: 'assets/svg/insighttracking.svg',
          firstName: 'Insights',
          secondName: 'Tracking',
          textColor: kBlackColor,
        ),
        OperationCard(
          cardColor: kWhiteColor,
          svgPath: 'assets/svg/bankwithdraw.svg',
          firstName: 'Bank',
          secondName: 'Withdraw',
          textColor: kBlackColor,
        ),
      ],
    );
  }
}
