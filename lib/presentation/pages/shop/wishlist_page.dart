import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/presentation/model/item_model.dart';
import 'package:eco_style/presentation/pages/shop/home_page.dart';
import 'package:eco_style/presentation/provider/favorite_provider.dart';
import 'package:eco_style/presentation/widgets/item_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final List<ItemModel> favoriteItems = provider.favorites;

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
              "Wishlist",
              style: TextStyle(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Text("Your Wishlist is Empty"),
            )
          : GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 24,
                childAspectRatio: 0.65,
              ),
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];

                return Center(
                  child: Wrap(
                    children: [
                      ItemBox(
                        imagePath: item.imagePath,
                        starCount: item.starCount,
                        rating: item.rating,
                        itemBrand: item.itemBrand,
                        itemName: item.itemName,
                        itemPrice: item.itemPrice,
                        sizes: [item.selectedSize],
                        color: [item.selectedColor],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
