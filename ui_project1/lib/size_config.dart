import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static double? defaultSize;
  static Orientation? orientation;

  void init() {
    orientation = Get.context?.mediaQuery.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
