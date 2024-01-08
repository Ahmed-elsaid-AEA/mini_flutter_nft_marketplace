import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/custom_category_stats_page.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/custom_sub_title_state_page.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/custom_table_row_stats_page.dart';
import 'package:mini_flutter_nft_marketplace/models/table_row_Model.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height - 250;

    return SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p9),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: BlurValues.b10, sigmaY: BlurValues.b10),
                child: Container(
                  color: ColorManager.kColorWhite.withOpacity(0.1),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => CustomTableRowStatsPage(
                          tableRowModel: TableRowModel(
                              index + 1,
                              index%2==0?AssetImageManager.catHomePage1:AssetImageManager.catHomePage2,
                              "name $index",
                              "subName  $index",
                              "${index * 10}",
                              "present",
                              index%3==0?true:false)),
                      separatorBuilder: (context, index) => SizedBox(
                            height: HeightValues.h9,
                          ),
                      itemCount: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
