/// - 变量
///   - 变量是一个引用，Dart万物皆对象，变量存储的是对象的引用
///   - 声明变量
///     - 明确指定类型: `int age =18;`
///     - 不明确类型: `var age = 18;`或`dynamic age = 18;`
///   - 变量名大小写敏感 (`age`与`Age`是两个不同的变量)
///   - 变量默认值是`null` (JS中变量默认值是`undefined`)
/// - 常量
///   - 常量就是值不可变的变量 (一旦声明，其值不能更改)
///   - 声明常量
///     - `const age = 18;`
///     - `final age = 18;`
///   - `const`与`final`的区别

///     ```Dart
///     const time = DateTime.now(); // 报错 - 无法将运行时的值分配给const变量(编译时常量)
///     final time = DateTime.now(); // 成功 - 可以将运行时的值分配给final变量
///     ```
///

void main(List<String> args) {
  // 声明变量
  var age = 18;
  print(age); // 18

  // 指定数据类型的方式
  String name = '张三';
  // name = 20; // error
  print(name); // 张三

  dynamic myName = 20;
  myName = '李四';
  print(myName); // 李四

  // 变量的默认值
  var defaultName;
  print(defaultName); // null

  // 变量名大小写敏感
  var Age = 30;
  print(Age); // 30

  //常量
  const n1 = 1;
  // n1 = 6; // error
  print(n1); // 1

  final n2 = 2;
  // n2 = 6; // error
  print(n2); // 2
}
