import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/state/widgets/active_sub_title_stats_page.dart';

class CustomSubTitleStatePage extends StatelessWidget {
  const CustomSubTitleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // padding: const EdgeInsets.only(bottom: PaddingValues.p16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                width: WidthValues.w0_2,
                color: ColorManager.kColorLightBlue,
              ))),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
ActiveSubTitleStatsPage(active: true,title: StringsManager.ranking,iconData: Icons.stacked_bar_chart),
SizedBox(width: WidthValues.w28_83,),
ActiveSubTitleStatsPage(active: false,title: StringsManager.activity,iconData: Icons.stacked_line_chart),

        ],
      ),
    );
  }
}
