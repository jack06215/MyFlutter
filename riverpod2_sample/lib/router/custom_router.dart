import 'package:flutter/material.dart';

import 'package:riverpod2_sample/pages/home_page.dart';
import 'package:riverpod2_sample/pages/not_found_page.dart';
import 'package:riverpod2_sample/pages/random_page.dart';

import 'package:riverpod2_sample/router/route_constants.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: 'Flutter Demo Home Page'));
      case randomRoute:
        return MaterialPageRoute(builder: (_) => const RandomPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
