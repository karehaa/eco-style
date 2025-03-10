import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/pages/shop/home_page.dart';
import 'package:eco_style/widgets/filter_list.dart';
import 'package:eco_style/widgets/range_field.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
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
            title: const Text(
              "Filter",
              style: TextStyle(
                color: ColorPallete.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 100,
              ),
              width: double.infinity,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  FilterList(
                    categories: [
                      "All",
                      "Woman",
                      "Man",
                      "Boys",
                      "Girls",
                    ],
                  ),
                  Text(
                    "Brands",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  FilterList(
                    categories: [
                      "All",
                      "Sare Studio",
                      "Sukka Citta",
                      "Osem",
                      "Rentique",
                      "Imaji Studio",
                    ],
                  ),
                  Text(
                    "Price Range",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RangeField(labelText: "MIN"),
                        RangeField(labelText: "MAX")
                      ],
                    ),
                  ),
                  FilterList(
                    categories: [
                      "0-75RB",
                      "75-150RB",
                      "150-200RB",
                    ],
                  ),
                  Text(
                    "Review",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                  FilterList(
                    categories: [
                      "5 Stars",
                      "4 Stars and above",
                      "3 Stars and above",
                      "2 Stars and above",
                      "1 Stars and above",
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 92,
              color: ColorPallete.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 157,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: ColorPallete.white,
                      ),
                      child: const Center(
                        child: Text(
                          "Reset Filter",
                          style: TextStyle(
                            color: ColorPallete.terracota,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 157,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: ColorPallete.terracota,
                      ),
                      child: const Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(
                            color: ColorPallete.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
