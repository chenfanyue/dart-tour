void printMessage(String message, [String? prefix]) {
  if (prefix != null) {
    print('$prefix: $message');
  } else {
    print(message);
  }
}

void main() {
  printMessage('Hello, world!'); // 输出: Hello, world!
  printMessage('Hello, world!', 'INFO'); // 输出: INFO: Hello, world!
}
