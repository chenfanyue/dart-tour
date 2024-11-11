void main() {
  List<int> numbers = [1, 2, 3, 4];
  Iterator<int> iterator = numbers.iterator;

  while (iterator.moveNext()) {
    print(iterator.current); // 依次打印 1, 2, 3, 4
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  for (final element in numbers) {
    print(element); // 依次打印 1, 2, 3, 4
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]); // 依次打印 1, 2, 3, 4
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  numbers.forEach(print);
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  numbers.forEach((n) => print(n-1));
}

void main() {
  List<int> numbers = [1, 2, 3, 4];

  numbers.forEach((n) {
    final i = n - 1;
    print(i);
  });
}
