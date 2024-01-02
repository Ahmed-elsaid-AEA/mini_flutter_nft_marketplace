import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/constants.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_sub_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SizedBox(
            height: HeightValue.h27,
          ),
          const CustomSubTitle(title: StringsManager.trendingCollectionHomePage)
       ,const SizedBox(height: 7,),
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
          SizedBox(
            height: HeightValue.h27,
          ),
          const CustomSubTitle(title: StringsManager.trendingCollectionHomePage)
          ,],
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
