import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.stacked_bar_chart,
                      color: Colors.grey,
                    ),
                    Text(
                      "Ranking",
                      style: TextStyle(
                          fontSize: FontSize.f15, color: ColorManager.kColorWhite),
                    )
                  ],
                ),
                SizedBox(height: 13,),
                Container(color: Colors.red,width: 106,height: 5,)
              ],
            ),
            SizedBox(
              width: 36,
            ),
            Row(
              children: [
                Icon(
                  Icons.stacked_line_chart,
                  color: Colors.grey,
                ),
                Text(
                  "Activity",
                  style: TextStyle(
                      fontSize: FontSize.f15, color: Colors.grey),
                )
              ],
            ),
             ],
        ),
        Divider(color: ColorManager.kColorWhite,thickness: .2 ,height: 1,)

      ],
    );
  }
}
