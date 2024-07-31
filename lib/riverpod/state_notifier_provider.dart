import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNofifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNofifier(),
);

class ShoppingListNofifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNofifier()
      : super([
          ShoppingItemModel(
            name: '김치',
            quantity: 3,
            hasBought: false,
            onSale: true,
          ),
          ShoppingItemModel(
            name: '라면',
            quantity: 5,
            hasBought: false,
            onSale: true,
          ),
          ShoppingItemModel(
            name: '삼겹살',
            quantity: 10,
            hasBought: false,
            onSale: false,
          ),
          ShoppingItemModel(
            name: '수박',
            quantity: 6,
            hasBought: true,
            onSale: false,
          ),
          ShoppingItemModel(
            name: '카스테라',
            quantity: 1,
            hasBought: true,
            onSale: true,
          ),
        ]);

  void toggleHasBought({required String name}) {
    state = state
        .map(
          (e) => e.name == name ? e.copyWith(hasBought: !e.hasBought) : e,
        )
        .toList();
  }
}
