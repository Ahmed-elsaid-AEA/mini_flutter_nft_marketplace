import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(
      StringsManager.titleHomePage,
      style: TextStyle(
          fontSize: FontSize.f25_23,
          fontFamily: FontMangers.sfRroDisplay,
          color: ColorManager.kColorWhite),
    );
  }
}
