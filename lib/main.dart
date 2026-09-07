import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Bookly_app());
}

class Bookly_app extends StatelessWidget {
  const Bookly_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
