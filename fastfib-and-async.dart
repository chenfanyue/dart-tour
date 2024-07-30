import 'dart:isolate';

int fastFib(int n) {
  int a = 1, b = 1;
  while (n > 1) {
    int tmp = b;
    b = a + b;
    a = tmp;
    n--;
  }
  return b;
}

// Compute without blocking current isolate.
void fib() async {
  print('into the async function');
  var result = await Isolate.run(() => fastFib(100));
  print('Fib = $result');
}

void main() {
  fib();
  for (var i = 0; i < 100; i++) {
    print(i);
  }
}
