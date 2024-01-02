import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p14),
          child: Text(
              style: const TextStyle(
                  color: ColorManager.kColorWhite,
                  fontSize: FontSize.f17,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontMangers.sfRroDisplay),
              title,
              textAlign: TextAlign.start),
        ));
  }
}
