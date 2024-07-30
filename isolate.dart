import 'dart:isolate';

void main() {
  ReceivePort receivePort = ReceivePort();

  // 启动新的 Isolate，并传递 ReceivePort 的 SendPort
  Isolate.spawn(
    (SendPort sendPort) async {
      print('任务开始执行');
      await Future.delayed(Duration(seconds: 3));
      print('任务执行完成');
      sendPort.send('任务完成');
    },
    receivePort.sendPort,
  );

  // 监听 ReceivePort 接收的消息
  receivePort.listen((message) {
    print('主 Isolate 收到消息: $message');
  });
}
