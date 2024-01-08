import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage({super.key, required this.title, required this.iconData});
final String title;
final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return  Container(

      alignment: Alignment.center,
      height: 39,
      width: 147,
      decoration: BoxDecoration(
        color: ColorManager.kColorDarkBanafseg.withOpacity(.12),
        border: Border.all(
          color: ColorManager.kColorPanafseg,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: ColorManager.kColorGrey,
          ),
          const SizedBox(width: WidthValues.w2,),
          Text(
            title,
            style: const TextStyle(
                fontSize: FontSize.f12,
                fontWeight: FontWeight.bold,
                fontFamily: FontMangers.sfRroDisplay),
          ),
          const Icon(
            Icons.arrow_drop_down_sharp,
            color: ColorManager.kColorGrey,
          ),
        ],
      ),
    );
  }
}
