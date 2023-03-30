/// - 声明函数
///   - 直接声明
///     - Dart中声明函数不需要function关键字
///   - 箭头函数
///     - Dart中的箭头函数中，`函数体只能写一行且不能带有结束的分号`
///     - Dart中的箭头函数，只是函数的一种简写形式
///   - 匿名函数
///   - 立即执行函数

// 直接声明函数
void printInfo() {
  print('Hello, World');
}

int getNum() {
  // 返回值与函数声明的返回值类型要一致
  // return '1'; // error
  return 1;
}

void main(List<String> args) {
  // 调用函数
  printInfo(); // Hello, World
  print(getNum()); // 1

  // 匿名函数
  void Function(dynamic) myPrint = (value) {
    print(value);
  };
  List fruits = ['苹果', '香蕉', '猕猴桃'];
  fruits.forEach(myPrint);

  // 箭头函数
  fruits.forEach((element) => {
        // 箭头函数中，不能写结束的分号
        // print(element); // error
        print(element)
      });
  // 箭头函数中，{}可以省略
  fruits.forEach((element) => print(element));

  // 立即执行函数
  ((int n) {
    print(n); // 17
  })(17);
}
