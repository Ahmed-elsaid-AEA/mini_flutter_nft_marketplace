import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class ActiveSubTitleStatsPage extends StatelessWidget {
  const ActiveSubTitleStatsPage({super.key, required this.active, required this.title, required this.iconData});
final bool active;
final String title ;
final IconData iconData ;
  @override
  Widget build(BuildContext context) {
    return     Container(

      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconData,
                color: ColorManager.kColorGrey,
              ),
              Text(
                StringsManager.ranking,
                style: TextStyle(
                    color: active? ColorManager.kColorWhite:ColorManager.kColorGrey,
                    fontFamily: FontMangers.sfRroDisplay,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox
            (
            height: 20,
          ),
        if(active) Container(
            decoration: BoxDecoration(
                color: ColorManager.kColorDarkBanafseg,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, -5),
                      color: ColorManager.kColorDarkBanafseg,
                      blurRadius: 16,

                      spreadRadius: 1
                  ),

                ]),
            width: WidthValues.w106,
            height: 3.6,
          )
        ],
      ),
    );
  }
}
