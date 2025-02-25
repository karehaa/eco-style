import 'package:eco_style/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPallete.white,
      body: Center(
        child: Text(
          "Sign-In Page On Development.",
          style: TextStyle(
              color: ColorPallete.darkBrown,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              fontFamily: 'Montserrat'),
        ),
      ),
    );
  }
}
