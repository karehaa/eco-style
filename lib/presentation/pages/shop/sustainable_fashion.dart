import 'package:eco_style/presentation/widgets/item_box.dart';
import 'package:flutter/material.dart';

class SustainableFashion extends StatelessWidget {
  const SustainableFashion({super.key});

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
                  'assets/image/card_images/sustainable_fashion/nila_long_sleeve.png',
              itemBrand: "Sare Studio",
              itemName: "Nila Long Sleeve Top",
              itemPrice: 359000,
              rating: 5.0,
              starCount: 5,
              color: ["Stone"],
            ),
            ItemBox(
              imagePath:
                  'assets/image/card_images/sustainable_fashion/sulla_oversized_shirt.png',
              itemBrand: "Rentique",
              itemName: "Sulla Oversized",
              itemPrice: 359000,
              rating: 4.9,
              starCount: 4,
              color: ["White", "Blue"],
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 24,
          children: [
            ItemBox(
              imagePath:
                  'assets/image/card_images/sustainable_fashion/classic_wrap_top.png',
              itemBrand: "Sukka Citta",
              itemName: "Classic Wrap Top",
              itemPrice: 2990000,
              rating: 4.9,
              starCount: 4,
              color: ["Blue"],
            ),
            ItemBox(
              imagePath:
                  'assets/image/card_images/sustainable_fashion/evening_dress.png',
              itemBrand: "Sukka Citta",
              itemName: "Evening Dress",
              itemPrice: 5890000,
              rating: 4.9,
              starCount: 4,
              color: ["Monochrome"],
            ),
          ],
        ),
      ],
    );
  }
}
