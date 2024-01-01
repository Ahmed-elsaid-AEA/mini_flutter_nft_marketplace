import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(AssetImageManager.onBoardingBackgroundImage)),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  StringsManager.titleOnBoardingPage,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: FontMangers.sfRroDisplay,
                      color: ColorManager.kColorWhite,
                      fontSize: FontSize.f36_04,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 10,sigmaY: 10
                    ),
                    child: Container(
                      height: 191,
                      width: 306,
                      color: ColorManager.kColorWhite.withOpacity(0.1),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
