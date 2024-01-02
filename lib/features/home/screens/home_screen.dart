import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_title_home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(RadiusValue.r27_03),
                child: const Image(
                  image: AssetImage(AssetImageManager.catHomePage1),
                  height: HeightValue.h167_57,
                  width: WeightValue.w252_26,
                ),
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(RadiusValue.r27_03),
                    bottomRight: Radius.circular(RadiusValue.r27_03),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xff000000).withOpacity(0),
                            Color(0xff000000).withOpacity(.45),
                          ])),
                      height: 45.06,
                      width: WeightValue.w252_26,
                      child: Text("Art",style: TextStyle(fontSize: 19.82,fontFamily: FontMangers.sfRroDisplay,fontWeight: FontWeight.bold),)),
                ),
              )
            ],
          ),
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
