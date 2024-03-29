import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/models/top_seller_model.dart';

import '../../../core/resourses/asset_mage_manager.dart';
import '../../../core/resourses/color_manager.dart';
import '../../../core/resourses/font_managers.dart';
import '../../../core/resourses/size_manager.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({super.key, required this.topSellerModel});
final TopSellerModel topSellerModel;
  @override
  Widget build(BuildContext context) {
    return    UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: BlurValues.b100, sigmaY: BlurValues.b100),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(PaddingValues.p9),
            height: HeightValues.h236,
            width: WidthValues.w157,
            color: ColorManager.kColorWhite.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(topSellerModel.image),
                    height: HeightValues.h139,
                  ),
                ),
                const SizedBox(
                  height: HeightValues.h9,
                ),
                Text(
                  topSellerModel.title,
                  style: const TextStyle(
                      color: ColorManager.kColorWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontMangers.sfRroDisplay,
                      fontSize: FontSize.f11),
                ),

                Text(
                  topSellerModel.subTitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontMangers.sfRroDisplay,
                      fontSize: FontSize.f10),
                ),
                const SizedBox(
                  height:HeightValues.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.hearing_sharp, color: Colors.grey),
                        Text('${topSellerModel.count1}')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart,
                            color:topSellerModel.activeLike?ColorManager.kColorRed: Colors.grey),
                        Text('${topSellerModel.count2}')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
