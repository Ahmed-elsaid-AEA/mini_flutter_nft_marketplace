import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    color: ColorManager.kColorGrey,
                  ),
                  Text(
                    StringsManager.ranking,
                    style: TextStyle(
                        color: ColorManager.kColorWhite,
                        fontFamily: FontMangers.sfRroDisplay,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.stacked_line_chart,
                    color: ColorManager.kColorGrey,
                  ),
                  Text(
                    StringsManager.activity,
                    style: TextStyle(
                        color: ColorManager.kColorGrey,
                        fontFamily: FontMangers.sfRroDisplay,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
         ],
    );
  }
}
