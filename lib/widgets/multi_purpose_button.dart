import 'package:flutter/material.dart';

class MultiPurposeButton extends StatelessWidget {
  const MultiPurposeButton({
    super.key,
    required this.buttonColor,
    required this.textColor,
    required this.textWeight,
    required this.buttonText,
    required this.buttonHeight,
    required this.radius,
    this.hasShadow = false,
    this.shadows,
    this.routeDestination,
    this.forRoute = true,
    this.function,
    this.hasIcon = true,
    this.iconPath,
    this.iconWidth,
    this.iconHeight,
  });

  final Color buttonColor;
  final Color textColor;
  final FontWeight textWeight;
  final String buttonText;
  final double buttonHeight;
  final double radius;
  final Widget? routeDestination;
  final bool forRoute;
  final void Function()? function;
  final bool hasShadow;
  final List<BoxShadow>? shadows;
  final bool hasIcon;
  final String? iconPath;
  final double? iconWidth;
  final double? iconHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: forRoute && routeDestination != null
          ? () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => routeDestination!),
                ),
              }
          : function,
      child: Container(
        width: double.infinity,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: hasShadow ? shadows ?? shadows : [],
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasIcon && iconPath != null)
              Image.asset(
                iconPath!,
                width: iconWidth,
                height: iconHeight,
              ),
            if (hasIcon && iconPath != null)
              const SizedBox(
                width: 12,
              ),
            Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: textWeight,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ),
    );
  }
}
