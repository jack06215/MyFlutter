import 'package:flutter/material.dart';

import 'package:ui_project1/components/body.dart';
import 'package:ui_project1/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    // You have to call it on the start screen
    SizeConfig().init();
    return const Scaffold(
      body: Body(),
    );
  }
}
