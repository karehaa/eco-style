import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class FilterList extends StatefulWidget {
  const FilterList({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  late List<String> selectedCategories;

  @override
  void initState() {
    super.initState();
    selectedCategories = ["All"];
  }

  void toggleCategory(String category) {
    setState(() {
      if (category == "All") {
        selectedCategories = ["All"];
      } else {
        selectedCategories.remove("All");

        if (selectedCategories.contains(category)) {
          selectedCategories.remove(category);
        } else {
          selectedCategories.add(category);
        }

        if (selectedCategories.isEmpty) {
          selectedCategories = ["All"];
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 24,
      ),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: widget.categories.map((category) {
          final isSelected = selectedCategories.contains(category);
          return GestureDetector(
            onTap: () => toggleCategory(category),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: isSelected ? ColorPallete.terracota : ColorPallete.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? ColorPallete.white : ColorPallete.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
