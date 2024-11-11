void main() {
  f('nullable with base type String');
  f(null);
}

void f(String? maybeString) {
  switch (maybeString) {
    case var s?:
      // s: String
      print(s);
  }
}


void main() {
  f('nullable with base type String');
  f(null);
}

void f(String? maybeString) {
  if (maybeString case var s?) { // s: String
      print(s);
  }
}

void main() {
  f('nullable with base type String');
  f(null);
}

void f(String? maybeString) {
  if (maybeString case var s) { // s: String?
      print(s);
  }
}
