typedef Item = int;

Item? bestDeal(List<Item> cart) {
  Item? bestItem;

  for (final item in cart) {
    if (bestItem == null || item < bestItem) {
      bestItem = item;
    }
  }

  return bestItem;
}

void main(List<String> args) {
  final cart = <int>[11, 9, 55, 139];
  final bestItem = bestDeal(cart);
  print(bestItem);
}
