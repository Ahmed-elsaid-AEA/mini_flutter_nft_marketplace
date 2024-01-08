
import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/color_manager.dart';
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
int index=0;
List <Widget> w=[HomePage(),StatePage()];
  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:CustomBottomNavigationBar(
        onPressedHome: () {
          index=0;
          setState(() {

          });
        },
        onPressedStats: () {
          index=1;
          setState(() {

          });
        },
          widthScreen: widthScreen),
      body: w[index],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(StringsManager.titleHomePage),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorManager.kColorPrimary,
    );
  }
}
