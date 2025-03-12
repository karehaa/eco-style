class ItemModel {
  final String imagePath;
  final int starCount;
  final double rating;
  final String itemBrand;
  final String itemName;
  final int itemPrice;
  final List<String>? sizes;
  final List<String>? color;
  final String selectedSize;
  final String selectedColor;

  ItemModel({
    required this.imagePath,
    required this.starCount,
    required this.rating,
    required this.itemBrand,
    required this.itemName,
    required this.itemPrice,
    this.sizes = const ['S', 'M', 'L', 'XL'],
    this.color = const [],
    this.selectedSize = '',
    this.selectedColor = '',
  });

  ItemModel copyWith({String? selectedSize, String? selectedColor}) {
    return ItemModel(
      imagePath: imagePath,
      starCount: starCount,
      rating: rating,
      itemBrand: itemBrand,
      itemName: itemName,
      itemPrice: itemPrice,
      sizes: sizes,
      color: color,
      selectedSize: selectedSize ?? this.selectedSize,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }

  factory ItemModel.empty() {
    return ItemModel(
      imagePath: '',
      starCount: 0,
      rating: 0.0,
      itemBrand: '',
      itemName: '',
      itemPrice: 0,
      sizes: [],
      color: [],
      selectedSize: '',
      selectedColor: '',
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ItemModel &&
        other.imagePath == imagePath &&
        other.itemName == itemName &&
        other.itemBrand == itemBrand &&
        other.selectedSize == selectedSize &&
        other.selectedColor == selectedColor;
  }

  @override
  int get hashCode =>
      imagePath.hashCode ^
      itemName.hashCode ^
      itemBrand.hashCode ^
      selectedSize.hashCode ^
      selectedColor.hashCode;
}
