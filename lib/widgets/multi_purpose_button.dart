import 'package:eco_style/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class MultiPurposeButton extends StatelessWidget {
  const MultiPurposeButton({
    super.key,
    required this.buttonText,
    required this.buttonHeight,
    required this.routeDestination,
  });

  final String buttonText;
  final double buttonHeight;
  final Widget routeDestination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => routeDestination)),
      child: Container(
        width: double.infinity,
        height: buttonHeight,
        decoration: BoxDecoration(
            color: ColorPallete.terracota,
            borderRadius: BorderRadius.circular(6)),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
            color: ColorPallete.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
