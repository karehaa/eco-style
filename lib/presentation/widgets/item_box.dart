import 'package:eco_style/presentation/pages/shop/item_card_page.dart';
import 'package:eco_style/presentation/widgets/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:intl/intl.dart';

class ItemBox extends StatefulWidget {
  const ItemBox({
    super.key,
    required this.imagePath,
    required this.starCount,
    required this.rating,
    required this.itemBrand,
    required this.itemName,
    required this.itemPrice,
    this.sizes = const ['S', 'M', 'L', 'XL'],
    this.color = const [],
  });

  final String imagePath;
  final int starCount;
  final double rating;
  final String itemBrand;
  final String itemName;
  final int itemPrice;
  final List<String>? sizes;
  final List<String>? color;

  @override
  State<ItemBox> createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemCardPage(
            imagePath: widget.imagePath,
            starCount: widget.starCount,
            rating: widget.rating,
            itemBrand: widget.itemBrand,
            itemName: widget.itemName,
            itemPrice: widget.itemPrice,
            sizes: widget.sizes,
            color: widget.color,
          ),
        ),
      ),
      child: SizedBox(
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
                      widget.imagePath,
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
                      widget.starCount > 0
                          ? 'assets/image/icons/star_icon.png'
                          : 'assets/image/icons/star_off_icon.png',
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      widget.starCount > 1
                          ? 'assets/image/icons/star_icon.png'
                          : 'assets/image/icons/star_off_icon.png',
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      widget.starCount > 2
                          ? 'assets/image/icons/star_icon.png'
                          : 'assets/image/icons/star_off_icon.png',
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      widget.starCount > 3
                          ? 'assets/image/icons/star_icon.png'
                          : 'assets/image/icons/star_off_icon.png',
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      widget.starCount > 4
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
                        "(${widget.rating})",
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
                        widget.itemBrand,
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
                        widget.itemName,
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
                        "Rp. ${NumberFormat.decimalPattern('id').format(widget.itemPrice)}",
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
            ),
            Positioned(
              bottom: 60,
              right: -7,
              child: FavoriteButton(
                imagePath: widget.imagePath,
                starCount: widget.starCount,
                rating: widget.rating,
                itemBrand: widget.itemBrand,
                itemName: widget.itemName,
                itemPrice: widget.itemPrice,
                sizes: widget.sizes,
                color: widget.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
