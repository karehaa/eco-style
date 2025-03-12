import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  const ColorList({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  late List<String> selectedCategories;

  @override
  void initState() {
    super.initState();
    selectedCategories = [];
  }

  void toggleCategory(String category) {
    setState(() {
      if (selectedCategories.contains(category)) {
        selectedCategories.remove(category);
      } else {
        selectedCategories = [];
        selectedCategories.add(category);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: widget.categories.map((category) {
        final isSelected = selectedCategories.contains(category);
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
