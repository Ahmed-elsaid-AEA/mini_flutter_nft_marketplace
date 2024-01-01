import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';

import '../../../core/resourses/strings_managers.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringsManager.titleOnBoardingPage,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: FontMangers.sfRroDisplay,
          color: ColorManager.kColorWhite,
          fontSize: FontSize.f36_04,
          fontWeight: FontWeight.bold),
    );
  }
}
