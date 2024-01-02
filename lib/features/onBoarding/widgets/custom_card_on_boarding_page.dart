import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/route_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(PaddingValue.p25),
          height: HeightValue.h191,
          width: WeightValue.w306,
          color: ColorManager.kColorWhite.withOpacity(0.1),
          child: Column(
            children: [
              const Text(
                StringsManager.titleCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorManager.kColorWhite,
                    fontSize: FontSize.f19_82,
                    fontFamily: FontMangers.sfRroDisplay,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: HeightValue.h6,
              ),
              const Text(
                StringsManager.descCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(color: ColorManager.kColorLightWhite),
              ),
              const SizedBox(
                height: HeightValue.h10,
              ),
              Container(
                width: WeightValue.w198_2,
                decoration: BoxDecoration(
                    // color: Color(0xff97A9F6),
                    gradient: const LinearGradient(
                        colors: [Color(0xff97A9F6), ColorManager.kColorLightWhite]),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(RadiusValue.r40)),
                    border: Border.all(
                      color: ColorManager.kColorWhite,
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusValue.r40),
                  child: BackdropFilter(
                    filter:
                        ImageFilter.blur(sigmaX: BlurValue.b100, sigmaY: 30),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.kHomePage);
                      },
                      child:
                          const Text(StringsManager.btnTitleCardOnBoardingPage),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
