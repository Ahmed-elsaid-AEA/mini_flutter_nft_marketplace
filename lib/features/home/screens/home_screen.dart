
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card__collection.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_card_top_seller.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:CustomBottomNavigationBar(widthScreen: widthScreen),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            SizedBox(
                height: HeightValues.h167_57,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CustomCategoryHomePage(
                          title: Constants.categoryList[index].title,
                          image: Constants.categoryList[index].image,
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: WidthValues.w9,
                        ),
                    itemCount: 3)),
            const SizedBox(
              height: HeightValues.h27,
            ),
            const CustomSubTitle(
                title: StringsManager.trendingCollectionHomePage),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: HeightValues.h194,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardCollection(
                        collctionsModel: Constants.collectionList[index],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValues.w28_83,
                      ),
                  itemCount: Constants.collectionList.length),
            ),
            const SizedBox(
              height: HeightValues.h27,
            ),
            const CustomSubTitle(title: StringsManager.topSeller),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              height: HeightValues.h236,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardTopSeller(
                      topSellerModel: Constants.topSellerList[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValues.w28_83,
                      ),
                  itemCount: Constants.collectionList.length),
            ), const SizedBox(
              height: HeightValues.h27,
            ),  const CustomSubTitle(title: StringsManager.topSeller),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              height: HeightValues.h236,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardTopSeller(
                      topSellerModel: Constants.topSellerList[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: WidthValues.w28_83,
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
