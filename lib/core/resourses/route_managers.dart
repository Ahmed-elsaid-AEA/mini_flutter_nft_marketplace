import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/features/home/screens/home_screen.dart';
import 'package:mini_flutter_nft_marketplace/features/onBoarding/screens/on_boarding_page.dart';
import 'package:mini_flutter_nft_marketplace/features/state/screens/state_page.dart';

class RouteManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteName.kOnBoardingPage: (context) => const OnBoardingPage(),
    RouteName.kHomePage: (context) => const HomeScreen(),
    RouteName.kStatePage: (context) => const StatePage()
  };
}

class RouteName {
  static const String kOnBoardingPage = "on_boarding_page";
  static const String kHomePage = "home_page";
  static const String kStatePage = "state_page";
}
