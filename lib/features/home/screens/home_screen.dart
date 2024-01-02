import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
          const SizedBox(
            height: 10,
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
                  padding: const EdgeInsets.all(9),
                  height: 194,
                  width: WidthValue.w157,
                  color: ColorManager.kColorWhite.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(19),
                        child: Image(
                            width: 139,
                            height: 139,
                            fit: BoxFit.cover,
                            image: AssetImage(AssetImageManager.trendingHomePage1)),
                      ),
                      SizedBox(height: 9,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("3D Art",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(CupertinoIcons.heart_fill,color: Colors.red,)
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(StringsManager.titleHomePage),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorManager.kColorPrimary,
    );
  }
}
