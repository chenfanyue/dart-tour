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
  int? dual = getValue(E.red);
  int v;
  // if (dual is int) v = dual;
  if (dual case int _) {
    v = dual;
  } else {
    v = 0;
  }
  print(v);
}
