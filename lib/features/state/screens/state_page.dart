import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/custom_category_stats_page.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/custom_sub_title_state_page.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: HeightValues.h27,
        ),
        CustomSubTitleStatePage(),
        SizedBox(
          height: HeightValues.h27,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCategoryStatsPage(
              title: StringsManager.allCategories,
              iconData: CupertinoIcons.table_badge_more,
            ),
            SizedBox(
              width: WidthValues.w20,
            ),
            CustomCategoryStatsPage(
              title: StringsManager.allChains,
              iconData: CupertinoIcons.link,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("1"),
              ClipRRect(
                borderRadius: BorderRadius.circular(RadiusValues.r9),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AssetImageManager.catHomePage1,
                  ),
                  width: WidthValues.w39,
                  height: HeightValues.h39,
                ),
              ),
              Container(
                width: 115,
                height: HeightValues.h39,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Azumi",
                      style: TextStyle(
                          color: ColorManager.kColorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: FontMangers.sfRroDisplay),
                    ),
                    Text(
                      "Azumi sd",
                      style: TextStyle(
                          fontSize: 11, fontFamily: FontMangers.sfRroDisplay),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.link,
                        size: 15,
                      ),
                      Text(
                        "200055.02",
                        style: TextStyle(
                            color: ColorManager.kColorWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("3,99%",style: TextStyle(
              color:Colors.green,
              fontSize: 12,
              fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
