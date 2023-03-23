/// - Number
///   - Dart中的数字由三个关键字描述
///     - num数字类型 (既可以是整数，也可以是小数)
///       - int表示整数 (必须是整数)
///       - double表示浮点数 (既可以是整数，也可以是小数)
///   - 常用API
///     - [num-class](https://api.dart.cn/stable/dart-core/num-class.html)
///     - [int-class](https://api.dart.cn/stable/dart-core/int-class.html)
///     - [double-class](https://api.dart.cn/stable/dart-core/double-class.html)

void main(List<String> args) {
  // 声明整数
  int count = 3;
  // count = 3.7; // error
  print(count); // 3

  // 声明浮点数
  double price = 3;
  print(price); // 3.0
  price = 3.7;
  print(price); // 3.7

  // 声明数值类型
  num n1 = 3;
  print(n1); // 3
  num n2 = 3.7;
  print(n2); // 3.7

  // 类型转换
  print(n1.toString()); // 3
  print(3.8.toInt()); // 3, 向下取整

  // 四舍五入
  print(3.1415926.round()); // 3
  print(3.1415926.toStringAsFixed(4)); // 3.1416

  // 返回余数
  print(10.remainder(4)); // 2, 10除以2余2

  /* 数值比较
     0: 相同
     1: 大于
     -1: 小于
  */
  print(10.compareTo(12)); // -1

  // 返回最大公约数
  print(12.gcd(18)); // 6

  // 科学计数法
  print(1000.toStringAsExponential(2)); // 1.00e+3
}
