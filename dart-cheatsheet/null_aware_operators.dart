void main() {
  // null-aware assignment
  int? a; // = null
  a ??= 3;
  print(a); // <-- Prints 3.

  a ??= 5;
  print(a); // <-- Still prints 3.

  // null-aware fallback
  print(1 ?? 3); // <-- Prints 1.
  print(null ?? 12); // <-- Prints 12.
  print(null ?? null ?? 'fallback');
}
