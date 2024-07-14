void printMessage(String message, [String prefix = 'INFO']) {
  print('$prefix: $message');
}

void main() {
  printMessage('Hello, world!'); // 输出: INFO: Hello, world!
  printMessage('Hello, world!', 'DEBUG'); // 输出: DEBUG: Hello, world!
}
