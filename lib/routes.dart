import 'package:faller/screens/show_fall.dart';
import 'package:flutter/material.dart';
import 'package:faller/screens/hafez_fall.dart';
import 'package:faller/screens/quran_fall.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case hafezFalls.thisPageRouteName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const hafezFalls(),
      );
    case quranFalls.thisPageRouteName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const quranFalls(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error 404! Page not found'),
          ),
        ),
      );
  }
}
