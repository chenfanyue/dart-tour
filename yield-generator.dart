String transform(String item) {
  return item.toUpperCase();
}

void main() {
  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = () sync* {
    for (var item in list) {
      yield transform(item);
    }
  }()
      .toList();

  uppercaseList.forEach((item) => print('$item: ${item.length}'));
}
