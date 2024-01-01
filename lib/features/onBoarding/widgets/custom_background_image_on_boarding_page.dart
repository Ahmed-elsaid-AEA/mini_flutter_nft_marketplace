import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';

class CustomBackgroundImageOnBoardingPage extends StatelessWidget {
  const CustomBackgroundImageOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage(AssetImageManager.onBoardingBackgroundImage));
  }
}
