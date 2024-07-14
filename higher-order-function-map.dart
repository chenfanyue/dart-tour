void main() {
  List<int> numbers = [1, 2, 3, 4];
  // map 是一个高阶函数
  List<int> squares = numbers.map((n) => n * n).toList();
  print(squares); // [1, 4, 9, 16]
}
