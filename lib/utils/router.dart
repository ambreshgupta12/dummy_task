import 'package:dummy_task/config/routes.dart';
import 'package:dummy_task/screen/favorites.dart';
import 'package:dummy_task/screen/home.dart';
import 'package:dummy_task/screen/profile.dart';
import 'package:dummy_task/screen/shop.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OpenDummyTaskRoutes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case OpenDummyTaskRoutes.shop:
        return MaterialPageRoute(builder: (_) => Shop());
      case OpenDummyTaskRoutes.favorites:
        return MaterialPageRoute(builder: (_) => Favorites());
      case OpenDummyTaskRoutes.profile:
        return MaterialPageRoute(builder: (_) => Profile());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
