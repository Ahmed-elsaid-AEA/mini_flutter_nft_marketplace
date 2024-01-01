import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/widgets/custom_background_image_on_boarding_page.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/widgets/custom_componenet_on_boarding_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CustomBackgroundImageOnBoardingPage(),
          CustomComponentOnBoardingPage(),
        ],
      )),
    );
  }
}
