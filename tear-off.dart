class MyClass {
  void sayHello() {
    print('Hello!');
  }
}

void main() {
  var myInstance = MyClass();

  // 直接调用方法
  myInstance.sayHello(); // 输出：Hello!

  // 使用 tear-off 获取方法的引用
  var myFunction = myInstance.sayHello;

  // 通过引用调用方法
  myFunction(); // 输出：Hello!
}
