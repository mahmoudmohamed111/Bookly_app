import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidinganimation});

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganimation,
          child: Text(
            textAlign: TextAlign.center,
            "Read free Books",
            style: TextStyle(
              fontFamily: "GT Sectra Fine",
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
