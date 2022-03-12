import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors_constant.dart';

class OperationCard extends StatelessWidget {
  const OperationCard(
      {Key? key,
      required this.cardColor,
      required this.firstName,
      required this.secondName,
      required this.svgPath,
      required this.textColor})
      : super(key: key);

  final Color cardColor;
  final String firstName;
  final String secondName;
  final String svgPath;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 19),
      height: 123,
      width: 123,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: kTenBlackColor,
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(8.0, 8.0),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgPath),
          Text(
            firstName,
            style: GoogleFonts.inter(
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Text(
            secondName,
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
