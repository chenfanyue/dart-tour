void printMessage({required String message, String? prefix}) {
  if (prefix != null) {
    print('$prefix: $message');
  } else {
    print(message);
  }
}

void main() {
  printMessage(message: 'Hello, world!'); // 输出: Hello, world!
  printMessage(message: 'Hello, world!', prefix: 'INFO'); // 输出: INFO: Hello, world!
}
