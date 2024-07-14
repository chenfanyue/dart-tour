void main() {
  try {
    throw Exception(1000);
  } on FormatException catch (e) {
    print('exception details: $e');
  } finally {
    print('finally do print');
  }
}
