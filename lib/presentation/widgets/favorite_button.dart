import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/presentation/model/item_model.dart';
import 'package:eco_style/presentation/provider/favorite_provider.dart';
import 'package:eco_style/presentation/widgets/color_list.dart';
import 'package:eco_style/presentation/widgets/size_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.imagePath,
    required this.starCount,
    required this.rating,
    required this.itemBrand,
    required this.itemName,
    required this.itemPrice,
    this.sizes,
    this.color,
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
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  String? selectedSize;
  String? selectedColor;

  void _showFavoriteDialog(BuildContext context, ItemModel item) {
    String tempSelectedSize = '';
    String tempSelectedColor = '';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: ColorPallete.lightCream,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return SizedBox(
              height: 388,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  top: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 60,
                        height: 5,
                        decoration: BoxDecoration(
                          color: ColorPallete.darkGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Detail",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Select Size",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Size Info",
                            style: TextStyle(
                                color: ColorPallete.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: SizeList(
                        key: ValueKey('${item.itemName}_size'),
                        categories: item.sizes ?? [],
                        onSizeSelected: (size) {
                          setState(() {
                            tempSelectedSize = size;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 14),
                    if (item.color != null && item.color!.isNotEmpty) ...[
                      const Text(
                        "Select Color",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ColorList(
                          key: ValueKey('${item.itemName}_color'),
                          categories: item.color!,
                          onColorSelected: (color) {
                            setState(() {
                              tempSelectedColor = color;
                            });
                          },
                        ),
                      ),
                    ],
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (tempSelectedSize.isEmpty ||
                              tempSelectedColor.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text("Please select both size and color."),
                              ),
                            );
                            return;
                          }

                          setState(() {
                            selectedSize = tempSelectedSize;
                            selectedColor = tempSelectedColor;
                          });

                          Provider.of<FavoriteProvider>(context, listen: false)
                              .toggleFavorite(
                            item,
                            tempSelectedSize,
                            tempSelectedColor,
                          );

                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPallete.terracota,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          "ADD TO WISHLIST",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context, listen: true);
    final ItemModel item = ItemModel(
      imagePath: widget.imagePath,
      starCount: widget.starCount,
      rating: widget.rating,
      itemName: widget.itemName,
      itemBrand: widget.itemBrand,
      itemPrice: widget.itemPrice,
      sizes: widget.sizes,
      color: widget.color,
    );

    bool isFavorited = provider.isExist(
      item,
      selectedSize ?? (item.sizes?.first ?? ''),
      selectedColor ?? (item.color?.first ?? ''),
    );

    return IconButton(
      onPressed: () {
        if (isFavorited) {
          provider.toggleFavorite(
            item,
            selectedSize!,
            selectedColor!,
          );
          setState(() {}); // Update UI
        } else {
          _showFavoriteDialog(context, item);
        }
      },
      icon: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isFavorited ? ColorPallete.red : ColorPallete.white,
          boxShadow: [
            BoxShadow(
              color: ColorPallete.black.withOpacity(0.08),
              blurRadius: 2,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Image.asset(
          'assets/image/icons/favorite_icon.png',
          color: isFavorited ? ColorPallete.white : ColorPallete.darkGrey,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
