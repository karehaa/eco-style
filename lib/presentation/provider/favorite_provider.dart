import 'package:eco_style/presentation/model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ItemModel> _favorite = [];
  List<ItemModel> get favorites => _favorite;
  void toggleFavorite(ItemModel item, String size, String color) {
    final existingItem = _favorite.firstWhere(
      (fav) =>
          fav.itemName == item.itemName &&
          fav.itemBrand == item.itemBrand &&
          fav.selectedSize == size &&
          fav.selectedColor == color,
      orElse: () => ItemModel.empty(),
    );

    if (existingItem.imagePath.isNotEmpty) {
      _favorite.remove(existingItem);
    } else {
      _favorite.add(item.copyWith(selectedSize: size, selectedColor: color));
    }

    notifyListeners();
  }

  bool isExist(ItemModel item, String size, String color) {
    return _favorite.any(
      (fav) =>
          fav.itemName == item.itemName &&
          fav.itemBrand == item.itemBrand &&
          fav.selectedSize == size &&
          fav.selectedColor == color,
    );
  }

  bool isItemFavorited(ItemModel item) {
    return _favorite.any((fav) =>
        fav.itemName == item.itemName &&
        fav.itemBrand == item.itemBrand &&
        fav.selectedSize == item.selectedSize &&
        fav.selectedColor == item.selectedColor);
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
