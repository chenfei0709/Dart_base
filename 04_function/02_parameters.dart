/// - 函数参数
///   - 必填参数
///     - 参数类型 参数名称
///   - 可选参数
///     - 放在必选参数后面
///     - 通过`中括号`包裹起来
///     - 带默认值的可选参数
///   - 命名参数
///     - 用`大括号`包裹起来
///     - 调用函数时，命名参数的名称与声明函数中的名称保持一致
///   - 函数参数

void main(List<String> args) {
  // 必填参数
  String userInfo(String name) {
    return "你好: $name";
  }

  String res = userInfo("张三");
  print(res); // 你好: 张三

  // 可选参数
  String userInfo2(String name, [int age = 18]) {
    return "你好: $name, 年龄: $age";
  }

  String res2_1 = userInfo2("李四");
  print(res2_1); // 你好: 李四, 年龄: 18
  String res2_2 = userInfo2("李四", 20);
  print(res2_2); // 你好: 李四, 年龄: 20

  // 命名参数
  String userInfo3(String name, {int age = 18}) {
    return "你好: $name, 年龄: $age";
  }

  String res3_1 = userInfo3("王五");
  print(res3_1); // 你好: 王五, 年龄: 18
  String res3_2 = userInfo3("王五", age: 20);
  print(res3_2); // 你好: 王五, 年龄: 20

  // 函数参数
  void Function(dynamic) myPrint = (value) {
    print(value);
  };
  List fruits = ["苹果", "香蕉", "猕猴桃"];
  // 将匿名函数myPrint传递给函数forEach
  fruits.forEach(myPrint);
}
