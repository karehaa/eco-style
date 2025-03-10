import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.routeTo,
  });

  final Widget routeTo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: ColorPallete.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPallete.terracota,
          width: 1,
        ),
      ),
      child: IconButton(
        icon: Image.asset(
          'assets/image/icons/filter_icon.png',
          width: 24,
          height: 24,
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routeTo),
          ),
        },
      ),
    );
  }
}
