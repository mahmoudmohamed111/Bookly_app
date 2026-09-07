import 'package:bookly_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  const SplashviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 6),
        Text(
          textAlign: TextAlign.center,
          "Read free Books",
          style: TextStyle(
            fontFamily: "GT Sectra Fine",
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
