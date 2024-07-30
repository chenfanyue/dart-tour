import 'dart:isolate';

int slowFib(int n) => n <= 1 ? 1 : slowFib(n - 1) + slowFib(n - 2);

// Compute without blocking current isolate.
void fib() async {
  var result = await Isolate.run(() => slowFib(300));
  print('Fib = $result');
}

void main() {
  fib();
  for (var i = 0; i < 50; i++) {
    print(i);
  }
}
