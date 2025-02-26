import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    super.key,
    required this.buttonText,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.routeDestination,
  });

  final String buttonText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final Widget routeDestination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => routeDestination)),
      child: Text(
        buttonText,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
