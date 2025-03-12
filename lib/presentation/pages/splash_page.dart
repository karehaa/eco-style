import 'dart:async';

import 'package:eco_style/presentation/pages/onboarding/onboarding1.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Onboarding1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.terracota,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        child: Center(
          child: Image.asset(
            'assets/image/others/ecostyle_logo.png',
          ),
        ),
      ),
    );
  }
}
