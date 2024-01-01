import 'package:flutter/material.dart';
import 'package:mini_flutter_nft_marketplace/core/resourses/route_managers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(),
      routes:RouteManagers.routes ,
      initialRoute: RouteName.kOnBoardingPage,
    );
  }
}
