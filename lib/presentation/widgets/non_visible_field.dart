import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';

class NonVisibleField extends StatefulWidget {
  const NonVisibleField(
      {super.key, required this.labelText, required this.controller});

  final String labelText;
  final TextEditingController controller;

  @override
  State<NonVisibleField> createState() => _NonVisibleFieldState();
}

class _NonVisibleFieldState extends State<NonVisibleField> {
  bool passwordIsShown = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !passwordIsShown,
      obscuringCharacter: '⬤',
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
        fillColor: ColorPallete.lightCream,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: ColorPallete.black,
            width: 1,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordIsShown = !passwordIsShown;
            });
          },
          icon: passwordIsShown
              ? const Icon(
                  Icons.visibility,
                )
              : const Icon(
                  Icons.visibility_off,
                ),
        ),
      ),
      style: const TextStyle(letterSpacing: 2),
    );
  }
}
