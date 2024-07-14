import 'dart:isolate';

// 定义一个函数，计算一个数字的阶乘
void calculateFactorial(SendPort sendPort) {
  int factorial(int n) {
    int result = 1;
    while (n > 1) {
      result *= n;
      n--;
    }
    return result;
  }

  int result = factorial(9);
  print(result);
  sendPort.send(result);
}

Future<void> main() async {
  // 创建一个接收端口
  ReceivePort receivePort = ReceivePort();

  // 启动一个新的 Isolate
  await Isolate.spawn(calculateFactorial, receivePort.sendPort);

  // 等待结果
  int result = await receivePort.first;
  print('Factorial result: $result');
}
