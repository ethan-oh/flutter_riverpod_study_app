class ShoppingItemModel {
  final String name;
  final int quantity;
  final bool hasBought;
  final bool onSale;

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.hasBought,
    required this.onSale,
  });

  ShoppingItemModel copyWith({
    String? name,
    int? quantity,
    bool? hasBought,
    bool? onSale,
  }) {
    return ShoppingItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      hasBought: hasBought ?? this.hasBought,
      onSale: onSale ?? this.onSale,
    );
  }
}
