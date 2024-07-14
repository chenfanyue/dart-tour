void enableFlags({bool bold = false, bool hidden = false}) {
  print('bold=$bold, hidden=$hidden');
}

void main() {
  enableFlags(hidden: true);
}
