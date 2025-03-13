import 'package:eco_style/presentation/pages/shop/filter_page.dart';
import 'package:eco_style/presentation/pages/shop/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/presentation/pages/shop/preloved.dart';
import 'package:eco_style/presentation/pages/shop/sustainable_fashion.dart';
import 'package:eco_style/presentation/widgets/filter_button.dart';
import 'package:eco_style/presentation/widgets/location_drop_down.dart';
import 'package:eco_style/presentation/widgets/search_field.dart';
import 'package:eco_style/presentation/widgets/shopping_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  int selectedTabIndex = 0;
  double scrollOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: ColorPallete.lightCream,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: ColorPallete.terracota,
          child: Image.asset(
            'assets/image/icons/market_icon.png',
            width: 28,
            height: 28,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -scrollOffset,
            left: 0,
            right: 0,
            child: Container(
              color: ColorPallete.terracota,
              height: 124,
            ),
          ),
          SafeArea(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.metrics.axis == Axis.vertical) {
                  setState(() {
                    scrollOffset += scrollNotification.scrollDelta ?? 0;
                  });
                }
                return true;
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 110.0),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 14),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Hi! Welcome Naila!",
                                    style: TextStyle(
                                      color: ColorPallete.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                WishlistPage(),
                                          ),
                                        ),
                                        child: Image.asset(
                                          'assets/image/icons/heart_icon.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Image.asset(
                                        'assets/image/icons/shop_icon.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 22),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 46,
                                      child: SearchField(
                                        labelText: "Search Product",
                                        controller: searchController,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const FilterButton(
                                    routeTo: FilterPage(),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/image/icons/location_icon.png',
                                    width: 9,
                                    height: 12,
                                  ),
                                  const SizedBox(width: 8),
                                  const LocationDropDown(),
                                ],
                              ),
                              const SizedBox(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ShoppingCard(),
                                      ShoppingCard(),
                                      ShoppingCard(),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.453,
                                    height: 46,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _tabButton("Sustainable Fashion", 0),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.453,
                                    height: 46,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _tabButton("Preloved", 1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                margin: EdgeInsets.only(
                                  left: selectedTabIndex == 0 ? 0 : 180,
                                ),
                                width: 170,
                                height: 3,
                                color: ColorPallete.terracota,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                width: double.infinity,
                                child: selectedTabIndex == 0
                                    ? const SustainableFashion()
                                    : const Preloved(),
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
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/image/navbar/navbar_shape.png',
                    width: 300,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 19,
                  left: 28,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/icons/finder_icon.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Finder",
                            style: TextStyle(
                              color: ColorPallete.lighterGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/icons/rentwear_icon.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Rentwear",
                            style: TextStyle(
                              color: ColorPallete.lighterGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 19,
                  right: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/icons/repair_icon.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Repair",
                            style: TextStyle(
                              color: ColorPallete.lighterGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/icons/profile_icon.png',
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Profile",
                            style: TextStyle(
                              color: ColorPallete.lighterGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabButton(String text, int index) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedTabIndex = index;
      }),
      child: Text(
        text,
        style: TextStyle(
          color: selectedTabIndex == index
              ? ColorPallete.black
              : ColorPallete.grey,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}
