import 'dart:async';

Future<T> logValue<T>(FutureOr<T> value) async {
  if (value is Future<T>) {
    var result = await value;
    print(result);
    return result;
  } else {
    print(value);
    return value;
  }
}

void main() async {
  // 同步值示例
  int syncValue = 1;
  await logValue(syncValue);

  // 异步值示例
  Future<String> asyncValue = Future.delayed(Duration(seconds: 1), () => 'Hello, Dart!');
  await logValue(asyncValue);
}
