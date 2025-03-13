import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  const ColorList({
    super.key,
    required this.categories,
    required this.onColorSelected,
  });

  final List<String> categories;
  final Function(String) onColorSelected;

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  String? selectedCategory;

  void toggleCategory(String category) {
    setState(() {
      if (selectedCategory == category) {
        selectedCategory = null;
      } else {
        selectedCategory = category;
      }
    });

    if (selectedCategory != null) {
      widget.onColorSelected(selectedCategory!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: widget.categories.map((category) {
        final isSelected = selectedCategory == category;
        return GestureDetector(
          onTap: () => toggleCategory(category),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 42.5,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: isSelected ? ColorPallete.terracota : ColorPallete.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? ColorPallete.white : ColorPallete.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
