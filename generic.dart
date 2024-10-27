Item? bestDeal<Item extends Comparable>(List<Item> cart) {
  Item? bestItem;

  for (final item in cart) {
    if (bestItem == null || item.compareTo(bestItem) < 0) {
      bestItem = item;
    }
  }

  return bestItem;
}

void main(List<String> args) {
  final cart = <double>[11, 9, 55, 139];
  final bestItem = bestDeal<double>(cart);
  print(bestItem);
}
