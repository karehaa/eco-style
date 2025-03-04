import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';

class VisibleField extends StatefulWidget {
  const VisibleField(
      {super.key, required this.labelText, required this.controller});

  final String labelText;
  final TextEditingController controller;

  @override
  State<VisibleField> createState() => _VisibleFieldState();
}

class _VisibleFieldState extends State<VisibleField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: ColorPallete.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
        ),
        filled: true,
        fillColor: ColorPallete.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: ColorPallete.black,
            width: 1,
          ),
        ),
      ),
    );
  }
}
