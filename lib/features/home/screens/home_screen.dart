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
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card_top_seller.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';
import 'package:mini_flutter_nft_marketplace/models/collections_model.dart';
import 'package:mini_flutter_nft_marketplace/models/top_seller_model.dart';

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
            CustomCardTopSeller(
                topSellerModel: TopSellerModel(AssetImageManager.topSeller1,
                    "title", "subTitle", true, 100, 200))
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
