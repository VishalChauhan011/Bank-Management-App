import 'package:banking_app/Components/card.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/constants/colors_constant.dart';


class CardList extends StatelessWidget {
  CardList({Key? key}) : super(key: key);

  final List<int> entries = <int>[0xFF1E1E99, 0xFFFF70A3];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 16, right: 16),
      children: const [
        CardWidget(
          cardBackground: kBlueColor,
          cardExpiryDate: '04-05-2025',
          cardHolderName: 'Vishal Chauhan',
          cardNumber: '**** **** **** 4765',
          topSVG: 'assets/svg/ellipse_top_pink.svg',
          bottomSVG: 'assets/svg/ellipse_pink_bottom.svg',
          cardType: 'assets/images/mastercard.png',
        ),
        CardWidget(
            cardNumber: '**** **** **** 8764',
            cardHolderName: 'Vishal Chauhan',
            cardExpiryDate: '06-08-2025',
            cardBackground: kPinkColor,
            topSVG: 'assets/svg/ellipse_blue_top.svg',
            bottomSVG: 'assets/svg/bottom_blue_element.svg',
            cardType: 'assets/images/mastercard.png')
      ],
    );
  }
}
