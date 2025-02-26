import 'package:flutter/material.dart';
import 'package:eco_style/themes/color_pallete.dart';

class NonVisibleField extends StatefulWidget {
  const NonVisibleField({super.key, required this.labelText});

  final String labelText;

  @override
  State<NonVisibleField> createState() => _NonVisibleFieldState();
}

class _NonVisibleFieldState extends State<NonVisibleField> {
  bool passwordIsShown = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !passwordIsShown,
      obscuringCharacter: '⬤',
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: ColorPallete.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
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
