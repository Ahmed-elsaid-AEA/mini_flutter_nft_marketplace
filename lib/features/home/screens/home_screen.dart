import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card__collection.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';
import 'package:mini_flutter_nft_marketplace/models/collections_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            SizedBox(
                height: HeightValue.h167_57,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CustomCategoryHomePage(
                          title: Constants.categoryList[index].title,
                          image: Constants.categoryList[index].image,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: WidthValue.w9,
                        ),
                    itemCount: 3)),
            const SizedBox(
              height: HeightValue.h27,
            ),
            const CustomSubTitle(
                title: StringsManager.trendingCollectionHomePage),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 194,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => custom_card_Collection(
                        collctionsModel: Constants.collectionList[index],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValue.w28_83,
                      ),
                  itemCount: Constants.collectionList.length),
            ),
            const SizedBox(
              height: HeightValue.h27,
            ),
            const CustomSubTitle(title: StringsManager.topSeller),
            SizedBox(
              height: 7,
            ),
            UnconstrainedBox(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(19),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: BlurValue.b100, sigmaY: BlurValue.b100),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(PaddingValue.p9),
                    height: HeightValue.h236,
                    width: WidthValue.w157,
                    color: ColorManager.kColorWhite.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(AssetImageManager.topSeller1),
                          height: HeightValue.h139,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          "Abstract Pink",
                          style: TextStyle(
                              color: ColorManager.kColorWhite,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontMangers.sfRroDisplay,
                              fontSize: 11),
                        ),

                        Text(
                          "abstract #2538",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontMangers.sfRroDisplay,
                              fontSize: 10),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.hearing_sharp, color: Colors.grey),
                                Text('0.906')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.heart, color: Colors.grey),
                                Text('200')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(StringsManager.titleHomePage),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorManager.kColorPrimary,
    );
  }
}
