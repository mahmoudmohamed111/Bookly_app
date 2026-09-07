import 'package:bookly_app/Features/home/presentation/views/widgets/custom_AppBar.dart';
import 'package:bookly_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [custom_appBar()]);
  }
}
