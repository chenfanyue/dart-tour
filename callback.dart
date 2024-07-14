void performOperation(int a, int b, void Function(int) callback) {
  int result = a + b;
  callback(result);
}

void printResult(int result) {
  print('The result is $result');
}

void main() {
  performOperation(3, 4, printResult); // 输出：The result is 7
}
