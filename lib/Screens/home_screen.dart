import 'package:banking_app/Components/card_list.dart';
import 'package:banking_app/Components/operations_list.dart';
import 'package:banking_app/constants/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  //Current Selected
  int current = 0;

  //Handle Indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/Vectorside_menu.svg'),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'Vishal Chauhan',
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 199,
              child: CardList(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 21, top: 29, bottom: 15, right: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Operations',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 3,

                    // forcing the indicator to use a specific direction
                    textDirection: TextDirection.ltr,
                    effect: const WormEffect(
                      dotHeight: 9,
                      dotWidth: 9,
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(
              height: 123,
              child:OperationList(),
            ),
          ],
        ),
      ),
    );
  }
}
