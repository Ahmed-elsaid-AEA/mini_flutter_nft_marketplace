

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/widgets/custom_card_on_boarding_page.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/widgets/custom_title_on_borading_page.dart';

class CustomComponentOnBoardingPage extends StatelessWidget {
  const CustomComponentOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: HeightValues.h70,
          ),
          CustomTitleOnBoardingPage(),
          Spacer(),
          CustomCardOnBoardingPage(),
          SizedBox(
            height: HeightValues.h70,
          ),
        ],
      ),
    );
  }
}
