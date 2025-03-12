import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  const SizeList({
    super.key,
    required this.categories,
    required this.onSizeSelected,
  });

  final List<String> categories;
  final Function(String) onSizeSelected; // Callback to update selected size

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  String? selectedCategory; // Store only one selected category

  void toggleCategory(String category) {
    setState(() {
      if (selectedCategory == category) {
        selectedCategory = null; // Deselect if tapped again
      } else {
        selectedCategory = category;
      }
    });

    if (selectedCategory != null) {
      widget.onSizeSelected(selectedCategory!); // Notify parent
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
              horizontal: 19,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: isSelected ? ColorPallete.terracota : ColorPallete.white,
              borderRadius: BorderRadius.circular(66),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? ColorPallete.white : ColorPallete.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
