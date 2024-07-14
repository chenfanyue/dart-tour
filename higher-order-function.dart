void main() {
  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }
}


void main() {
  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) => item.toUpperCase()).toList();

  uppercaseList.forEach((item) => print('$item: ${item.length}'));
}
