import 'package:eco_style/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "SHOP PAGE ON DEVELOPMENT",
          style: TextStyle(
            color: ColorPallete.darkBrown,
            fontSize: 18,
            fontWeight: FontWeight.w800,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}
