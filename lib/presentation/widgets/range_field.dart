import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class RangeField extends StatelessWidget {
  const RangeField({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 151,
      height: 39,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          label: Center(
            child: Text(
              labelText,
              style: const TextStyle(
                color: ColorPallete.darkGrey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: ColorPallete.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
