// import 'p.dart';

int? getValue(E e) => switch (e) {
      E.red => 25500,
      E.blue => 255,
      E.orange => null,
    };

enum E {
  red,
  blue,
  orange,
}

void main(List<String> args) {
  int v = switch (getValue(E.red)) {
    int i => i,
    _ => 0,
  };
  print(v);
}
