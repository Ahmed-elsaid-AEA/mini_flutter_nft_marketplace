import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/models/collections_model.dart';

class custom_card_Collection extends StatelessWidget {
  const custom_card_Collection({
    super.key, required this.collctionsModel,
  });
  final CollectionsModel collctionsModel;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: BlurValue.b100, sigmaY: BlurValue.b100),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(PaddingValue.p9),
            height: HeightValue.h194,
            width: WidthValue.w157,
            color: ColorManager.kColorWhite.withOpacity(0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage( collctionsModel.image),
                  height: HeightValue.h139,
                ),
                const SizedBox(
                  height: HeightValue.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(collctionsModel.title),
                    Row(
                      children: [

                        Icon(CupertinoIcons.heart_fill,
                            color:  collctionsModel.activeLike?ColorManager.kColorRed:Colors.grey),
                        Text('${collctionsModel.countLike}')
                      ],
                    )
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