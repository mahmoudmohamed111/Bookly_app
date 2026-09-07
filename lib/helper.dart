import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void Navigation_toPage({required Widget page}) {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(
      () => page,
      transition: Transition.fadeIn,
      duration: Duration(milliseconds: 400),
    );
  });
}
