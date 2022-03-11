import 'package:flutter/material.dart';
import 'package:banking_app/constants/colors_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.cardNumber,
      required this.cardHolderName,
      required this.cardExpiryDate,
      required this.cardBackground, required this.topSVG, required this.bottomSVG, required this.cardType})
      : super(key: key);

  final String cardNumber;
  final String cardHolderName;
  final String cardExpiryDate;
  final Color cardBackground;
  final String topSVG;
  final String bottomSVG;
  final String cardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 199,
      width: 344,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: cardBackground,
      ),
      child: Stack(
        children: [
          Positioned(
            child: SvgPicture.asset(topSVG),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: SvgPicture.asset(bottomSVG),
            bottom: 0,
            right: 0,
          ),
          Positioned(
            child: Text(
              'CARD NUMBER',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
                fontSize: 14,
              ),
            ),
            top: 48,
            left: 29,
          ),
          Positioned(
            child: Text(
              cardNumber,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
                fontSize: 20,
              ),
            ),
            top: 65,
            left: 29,
          ),
          Positioned(
            child: Text(
              'CARD HOLDER NAME',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
                fontSize: 14,
              ),
            ),
            top: 137,
            left: 29,
          ),
          Positioned(
            child: Text(
              cardHolderName,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
                fontSize: 20,
              ),
            ),
            top: 154,
            left: 29,
          ),
          Positioned(
            child: Text(
              'EXPIRY DATE',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: kWhiteColor,
                fontSize: 14,
              ),
            ),
            top: 137,
            left: 202,
          ),
          Positioned(
            child: Text(
              cardExpiryDate,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
                fontSize: 20,
              ),
            ),
            top: 154,
            left: 202,
          ),
           Positioned(
            child: Image(
              image: AssetImage(cardType),
            ),
            top: 35,
            right: 21,
          ),
        ],
      ),
    );
  }
}
