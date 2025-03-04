import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({
    super.key,
    required this.imagePath,
    required this.starCount,
    required this.rating,
    required this.itemBrand,
    required this.itemName,
    required this.itemPrice,
  });

  final String imagePath;
  final int starCount;
  final double rating;
  final String itemBrand;
  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152,
      height: 260,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: 152,
                    height: 174,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    starCount > 0
                        ? 'assets/image/icons/star_icon.png'
                        : 'assets/image/icons/star_off_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    starCount > 1
                        ? 'assets/image/icons/star_icon.png'
                        : 'assets/image/icons/star_off_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    starCount > 2
                        ? 'assets/image/icons/star_icon.png'
                        : 'assets/image/icons/star_off_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    starCount > 3
                        ? 'assets/image/icons/star_icon.png'
                        : 'assets/image/icons/star_off_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    starCount > 4
                        ? 'assets/image/icons/star_icon.png'
                        : 'assets/image/icons/star_off_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      "($rating)",
                      style: const TextStyle(
                        color: ColorPallete.lighterGrey,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemBrand,
                      style: const TextStyle(
                        color: ColorPallete.lighterGrey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inika',
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      itemName,
                      style: const TextStyle(
                        color: ColorPallete.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      itemPrice,
                      style: const TextStyle(
                        color: ColorPallete.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
