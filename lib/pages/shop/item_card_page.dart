import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/pages/shop/home_page.dart';
import 'package:eco_style/widgets/color_list.dart';
import 'package:eco_style/widgets/item_box.dart';
import 'package:eco_style/widgets/size_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemCardPage extends StatefulWidget {
  const ItemCardPage({
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
  State<ItemCardPage> createState() => _ItemCardPageState();
}

class _ItemCardPageState extends State<ItemCardPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: ColorPallete.lightCream,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: ColorPallete.terracota,
            boxShadow: [
              BoxShadow(
                color: ColorPallete.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: ColorPallete.white,
            ),
            title: Text(
              widget.itemName,
              style: const TextStyle(
                color: ColorPallete.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/image/icons/cart_icon.png',
                      width: 25,
                      height: 25,
                    )),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(bottom: 100),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 399,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            widget.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 76,
                          left: screenWidth * 0.4,
                          child: Wrap(
                            spacing: 8,
                            children: [
                              Image.asset(
                                'assets/image/dots/dot_off.png',
                                width: 8,
                                height: 8,
                              ),
                              Image.asset(
                                'assets/image/dots/dot_off.png',
                                width: 8,
                                height: 8,
                              ),
                              Image.asset(
                                'assets/image/dots/dot_on.png',
                                width: 8,
                                height: 8,
                              ),
                              Image.asset(
                                'assets/image/dots/dot_off.png',
                                width: 8,
                                height: 8,
                              ),
                              Image.asset(
                                'assets/image/dots/dot_off.png',
                                width: 8,
                                height: 8,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 23, right: 23, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.itemName,
                          style: const TextStyle(
                            color: ColorPallete.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/image/icons/share_icon.png',
                                width: 18,
                                height: 19.92,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/image/icons/favorite_inactive.png',
                                width: 36,
                                height: 36,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
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
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            Text(
                              "Rp. ${NumberFormat.decimalPattern('id').format(widget.itemPrice)}",
                              style: const TextStyle(
                                color: ColorPallete.terracota,
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 23,
                      left: 23,
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Size",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          "Size Info",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 23,
                    ),
                    child: Row(
                      children: [
                        SizeList(categories: widget.sizes!),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 23),
                    child: Text(
                      "Select Color",
                      style: TextStyle(
                        color: ColorPallete.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 23,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColorList(categories: widget.color!),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nila long-sleeves top features long sleeves with ruffled ends and also high ruffled neckline. Pair it with Loa pants for a total look.",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          "Sand Woven printed TENCEL™",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          "Ruffled high neckline",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          "Hook & eye button",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Shipping Info",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/image/icons/arrow_right_icon.png',
                            width: 16,
                            height: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Support",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/image/icons/arrow_right_icon.png',
                            width: 16,
                            height: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 26,
                      horizontal: 23,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Review Product",
                              style: TextStyle(
                                color: ColorPallete.darkBlue,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                            Text(
                              "See More",
                              style: TextStyle(
                                  color: ColorPallete.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter',
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
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
                                width: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Row(
                                  children: [
                                    Text(
                                      "${widget.rating}",
                                      style: const TextStyle(
                                        color: ColorPallete.lighterGrey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      "(5 Review)",
                                      style: TextStyle(
                                        color: ColorPallete.lighterGrey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/image/others/dewi_sartika_profile.png',
                              width: 48,
                              height: 48,
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Dewi Sartika",
                                  style: TextStyle(
                                    color: ColorPallete.darkBlue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
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
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          '"Bahannya ramah lingkungan dan terasa nyaman di kulit. Desainnya simpel, timeless, dan bisa dipakai lama. Pilihan tepat untuk fashion berkelanjutan!"',
                          style: TextStyle(
                            color: ColorPallete.darkGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Wrap(
                          spacing: 12,
                          children: [
                            SizedBox(
                              width: 72,
                              height: 72,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    widget.imagePath,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              width: 72,
                              height: 72,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    widget.imagePath,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            "27 Februari 2025",
                            style: TextStyle(
                              color: ColorPallete.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "You can also like this",
                          style: TextStyle(
                            color: ColorPallete.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          "12 Items",
                          style: TextStyle(
                            color: ColorPallete.darkGrey,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 23,
                      vertical: 12,
                    ),
                    child: SizedBox(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ItemBox(
                              imagePath: widget.imagePath,
                              starCount: 0,
                              rating: 0.0,
                              itemBrand: widget.itemBrand,
                              itemName: widget.itemName,
                              itemPrice: widget.itemPrice,
                              sizes: widget.sizes,
                              color: widget.color,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            ItemBox(
                              imagePath: widget.imagePath,
                              starCount: 0,
                              rating: 0.0,
                              itemBrand: widget.itemBrand,
                              itemName: widget.itemName,
                              itemPrice: widget.itemPrice,
                              sizes: widget.sizes,
                              color: widget.color,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            ItemBox(
                              imagePath: widget.imagePath,
                              starCount: 0,
                              rating: 0.0,
                              itemBrand: widget.itemBrand,
                              itemName: widget.itemName,
                              itemPrice: widget.itemPrice,
                              sizes: widget.sizes,
                              color: widget.color,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                vertical: 20,
                horizontal: 13,
              ),
              color: ColorPallete.white,
              width: double.infinity,
              height: 89,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorPallete.terracota),
                child: const Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: ColorPallete.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
