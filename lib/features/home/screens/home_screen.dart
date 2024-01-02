import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/route_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          UnconstrainedBox(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(PaddingValue.p25),
                  height: HeightValue.h191,
                  width: WidthValue.w157,
                  color: ColorManager.kColorWhite.withOpacity(0.1),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ),
          )
        ],
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
