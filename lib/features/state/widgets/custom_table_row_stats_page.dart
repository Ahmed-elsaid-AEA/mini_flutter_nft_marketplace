import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';

class CustomTableRowStatsPage extends StatelessWidget {
  const CustomTableRowStatsPage({super.key, required this.order, required this.image, required this.name, required this.subName, required this.count, required this.present});
final int order;
final String image;
final String name;
final String subName;
final String count;
final String present;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('$order'),
            const   SizedBox(width: WidthValues.w10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusValues.r9),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
                width: WidthValues.w39,
                height: HeightValues.h39,
              ),
            ),
            const  SizedBox(width: WidthValues.w13,),

            Container(
              width: 115,
              height: HeightValues.h39,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: ColorManager.kColorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.f15,
                        fontFamily: FontMangers.sfRroDisplay),
                  ),
                  Text(
                    subName,
                    style: const TextStyle(
                        fontSize: FontSize.f11, fontFamily: FontMangers.sfRroDisplay),
                  ),
                ],
              ),
            ),
            SizedBox(width: WidthValues.w28_83,),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.link,
                      size: 15,
                    ),
                    Text(
                      count,
                      style: TextStyle(
                          color: ColorManager.kColorWhite,
                          fontSize: FontSize.f13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(present,style: TextStyle(
                    color:Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
