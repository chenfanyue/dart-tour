import 'dart:async';

// 模拟一个异步函数，返回一个字符串
Future<String> fetchUserOrder() {
  // 延迟3秒后返回结果
  print('request sent');
  return Future.delayed(Duration(seconds: 3), () => 'Large Latte');
}

// 使用 async 和 await 来等待异步操作完成
void main() async {
  print('Fetching user order...');
  String order = await fetchUserOrder();
  print('User order: $order');
}
