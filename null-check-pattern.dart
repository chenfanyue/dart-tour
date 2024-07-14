String? maybeString = null;
switch (maybeString) {
  case var s?: // type of s is String
    print(s);
  default:
    print('null value');
}


String? maybeString = null;
switch (maybeString) {
  case var s: // type of s is String?
    print(s);
  /* following is dead code
  default:
    print('null value');
    dead code end. */
}
