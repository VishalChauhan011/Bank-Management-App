import 'package:flutter/material.dart';
import 'package:banking_app/constants/colors_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  CardList({Key? key}) : super(key: key);

  final List<int> entries = <int>[0xFF1E1E99, 0xFFFF70A3];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 16, right: 16),
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 199,
          width: 344,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: kBlueColor,
          ),
          child: Stack(
            children: [
              Positioned(
                child: SvgPicture.asset('assets/svg/ellipse_top_pink.svg'),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: SvgPicture.asset('assets/svg/ellipse_pink_bottom.svg'),
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
                  '**** **** **** 2356',
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
                  'Vishal Chauhan',
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
                  '05-10-2025',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: kWhiteColor,
                    fontSize: 20,
                  ),
                ),
                top: 154,
                left: 202,
              ),
              const Positioned(
                child: Image(
                  image: AssetImage('assets/images/mastercard.png'),
                ),
                top: 35,
                right: 21,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 199,
          width: 344,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: kPinkColor,
          ),
        )
      ],
    );
  }
}
