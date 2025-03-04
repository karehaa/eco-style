import 'package:eco_style/widgets/item_box.dart';
import 'package:flutter/material.dart';

class Preloved extends StatelessWidget {
  const Preloved({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 24,
          children: [
            ItemBox(
              imagePath:
                  'assets/image/card_images/preloved/womens_blue_jeans.png',
              itemBrand: "S · Sangat baik",
              itemName: "Women's Blue Jeans",
              itemPrice: "Rp. 90.000",
              rating: 4.9,
              starCount: 4,
            ),
            ItemBox(
              imagePath:
                  'assets/image/card_images/preloved/womens_black_blazer.png',
              itemBrand: "L · Sangat baik",
              itemName: "Women's Black Blazer",
              itemPrice: "Rp. 50.000",
              rating: 4.9,
              starCount: 4,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 24,
          children: [
            ItemBox(
              imagePath:
                  'assets/image/card_images/preloved/womens_crop_top.png',
              itemBrand: "L · Baik · H&M",
              itemName: "Women's Crop Top",
              itemPrice: "Rp. 30.000",
              rating: 4.8,
              starCount: 4,
            ),
            ItemBox(
              imagePath:
                  'assets/image/card_images/preloved/womens_blue_tshirt.png',
              itemBrand: "L · Sangat Baik · GAP",
              itemName: "Women's Blue T-shirt",
              itemPrice: "Rp. 50.000",
              rating: 5.0,
              starCount: 5,
            ),
          ],
        ),
      ],
    );
  }
}
