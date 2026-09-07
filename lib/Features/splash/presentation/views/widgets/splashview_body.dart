import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/slidingText.dart';
import 'package:bookly_app/core/utils/Assets.dart';
import 'package:bookly_app/helper.dart';
import 'package:flutter/material.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    initSlidingAnimation();
    Navigation_toPage(page: HomeView());
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 6),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slidinganimation = Tween<Offset>(
      begin: Offset(0, 16),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
}
