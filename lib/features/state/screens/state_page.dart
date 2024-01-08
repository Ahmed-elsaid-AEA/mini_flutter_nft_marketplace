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
        CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),
        CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),CustomTableRowStatsPage(
            order:1,
            image: AssetImageManager.catHomePage1,
            name: "name",
            subName: "subName",
            count: "20",
            present: "20"),
      ],
    );
  }
}
