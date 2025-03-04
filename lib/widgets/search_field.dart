import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';

class SearchField extends StatefulWidget {
  const SearchField(
      {super.key, required this.labelText, required this.controller});

  final String labelText;
  final TextEditingController controller;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: ColorPallete.grey,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
        ),
        filled: true,
        fillColor: ColorPallete.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: ColorPallete.terracota,
            width: 1,
          ),
        ),
        // Add these two properties
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: ColorPallete.terracota,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: ColorPallete.terracota,
            width: 1,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 16.0),
          child: Image.asset(
            'assets/image/icons/search_icon.png',
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
