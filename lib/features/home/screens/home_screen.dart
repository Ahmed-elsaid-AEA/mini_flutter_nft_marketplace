import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/font_managers.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/size_manager.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/strings_managers.dart';
import 'package:mini_flutter_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_flutter_nft_marketplace/features/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_flutter_nft_marketplace/features/state/screens/state_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> w = [HomePage(), StatePage()];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
          onPressedHome: () {
            index = 0;
            setState(() {});
          },
          onPressedStats: () {
            index = 1;
            setState(() {});
          },
          widthScreen: widthScreen),
      body: w[index],
      appBar:index==0? AppBar(
        centerTitle: true,
        title: Text(
              StringsManager.titleHomePage),
        backgroundColor: Colors.transparent,
      )
          :index==1?AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:PaddingValues.p14),
            child: Icon(Icons.more_horiz),
          )
        ],
        centerTitle: true,
        title: const Text(
            StringsManager.stats),
        backgroundColor: Colors.transparent,
      ):AppBar(title:const Text("null") ,),
      backgroundColor: ColorManager.kColorPrimary,
    );
  }
}
