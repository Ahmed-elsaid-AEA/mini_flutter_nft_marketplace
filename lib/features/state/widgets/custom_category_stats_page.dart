import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.reorder_outlined,
            color: ColorManager.kColorGrey,
          ),
          Text(
            "All categories",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: FontMangers.sfRroDisplay),
          ),
          Icon(
            Icons.arrow_drop_down_sharp,
            color: ColorManager.kColorGrey,
          ),
        ],
      ),
      height: 39,
      width: 147,
      decoration: BoxDecoration(
        color: ColorManager.kColorDarkBanafseg.withOpacity(.12),
        border: Border.all(
          color: ColorManager.kColorPanafseg,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
