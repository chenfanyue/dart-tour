import 'dart:async';

void fetchData(Function(String) callback) {
  // 模拟一个网络请求
  Timer(Duration(seconds: 2), () {
    String data = 'Hello from the server';
    callback(data);
  });
}

void main() {
  print('Fetching data...');
  fetchData((data) {
    print('Received data: $data'); // 输出：Received data: Hello from the server
  });
}
