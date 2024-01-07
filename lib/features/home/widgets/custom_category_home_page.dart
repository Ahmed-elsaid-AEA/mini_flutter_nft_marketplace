import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValues.r27_03),
          child:   Image(
            image: AssetImage(image),
            height: HeightValues.h167_57,
            width: WidthValues.w252_26,
          ),
        ),
        Positioned(bottom: PositionedValues.po,child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(RadiusValues.r27_03),
            bottomRight: Radius.circular(RadiusValues.r27_03),
          ),
          child: BackdropFilter(
            filter:ImageFilter.blur(sigmaX: BlurValues.b3,sigmaY: BlurValues.b3) ,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorManager.kColorBlack.withOpacity(0),
                          ColorManager.kColorBlack.withOpacity(.45),
                        ])),
                height: HeightValues.h45_06,
                width: WidthValues.w252_26,
                child: Text(title,style: const TextStyle(fontSize: FontSize.f19_82,fontFamily: FontMangers.sfRroDisplay,fontWeight: FontWeight.bold),)),
          ),
        ),)
      ],
    );
  }
}
