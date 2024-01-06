
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card__collection.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card_top_seller.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';

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
                    separatorBuilder: (context, index) => const SizedBox(
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
              height: HeightValue.h194,
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
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              height: HeightValue.h236,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardTopSeller(
                      topSellerModel: Constants.topSellerList[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValue.w28_83,
                      ),
                  itemCount: Constants.collectionList.length),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(StringsManager.titleHomePage),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorManager.kColorPrimary,
    );
  }
}
