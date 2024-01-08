import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/route_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';

import '../../../core/resourses/color_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.widthScreen, required this.onPressedStats, required this.onPressedHome});
final double widthScreen;
  final VoidCallback onPressedStats;
  final VoidCallback onPressedHome;

  // final
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightValues.h122,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: widthScreen,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: BlurValues.b100, sigmaY: BlurValues.b100),
                  child: Container(
                    alignment: Alignment.center,
                    height: HeightValues.h90,
                    color: ColorManager.kColorWhite.withOpacity(0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       IconButton(
                          onPressed: onPressedHome,
                          icon: const Icon(Icons.home,
                              color: Colors.white, size: SizeValues.s39),
                        ),IconButton(
                          onPressed: onPressedStats,
                          icon: const Icon(Icons.stacked_bar_chart,
                              color: Colors.white, size: SizeValues.s39),
                        ),
                        Container(
                          width: 39,
                        ),
                        const Icon(Icons.search,
                            color: Colors.white, size: SizeValues.s39),
                        const Icon(Icons.person,
                            color: Colors.white, size: SizeValues.s39),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: ShapeDecoration(
                shape: const StarBorder.polygon(sides: 6, pointRounding: .5),
                color: Colors.white.withOpacity(.5),
              ),
              height: HeightValues.h70,
              width: HeightValues.h70,
              child: const Icon(
                CupertinoIcons.plus,
                color: ColorManager.kColorWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
