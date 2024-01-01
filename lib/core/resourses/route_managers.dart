import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';

class RouteManagers{
 static Map<String, WidgetBuilder> routes={
   RouteName.kOnBoardingPage:(context) => const OnBoardingPage()
  };
}
class RouteName{
  static const String kOnBoardingPage="on_boarding_page";
}