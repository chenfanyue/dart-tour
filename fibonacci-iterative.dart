int fibonacci(int n) {
  int a = 0, b = 1;
  int c;
  for (int i = 0; i < n; i++) {
    c = a;
    a = b;
    b += c;
  }
  return a;
}

void main() {
  print(fibonacci(1000));
}
