late String description;
late String temperature = readThermometer(); // Lazily initialized.

String readThermometer() {
  return 'a';
}

void main() {
  description = 'ab';
  print(description);
}
