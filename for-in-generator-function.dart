Iterable<int> naturalNumbersTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}

Iterable<int> evenNumbersTo(int n) sync* {
  for (int i in naturalNumbersTo(n)) {
    if (i % 2 == 0) {
      yield i;
    }
  }
}

void main() {
  for (int i in evenNumbersTo(10)) {
    print(i); // 输出: 0, 2, 4, 6, 8
  }
}
