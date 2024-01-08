import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: const EdgeInsets.only(bottom: PaddingValues.p16),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            width: WidthValues.w0_7,
            color: ColorManager.kColorLightBlue,
          ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // padding: EdgeInsets.all(PaddingValues.p16),
                // color:Colors.red,

                child: Column(
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Color(0xff976dff),
                      width: WidthValues.w106,
                      height: 3.6,
                    )
                  ],
                ),
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
