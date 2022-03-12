import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors_constant.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {Key? key,
      required this.transactionIcon,
      required this.transactionID,
      required this.transactionDate,
      required this.transactionAmount,
      required this.amountColor})
      : super(key: key);

  final String transactionIcon;
  final String transactionID;
  final String transactionDate;
  final String transactionAmount;
  final Color amountColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 21, top: 13, end: 20),
      height: 76,
      width: 376,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
            color: kTenBlackColor,
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(8.0, 8.0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 25.95,
          ),
          SvgPicture.asset(transactionIcon),
          const SizedBox(
            width: 13,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionID,
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                transactionDate,
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          Text(
            transactionAmount,
            style: GoogleFonts.inter(
              color: amountColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
