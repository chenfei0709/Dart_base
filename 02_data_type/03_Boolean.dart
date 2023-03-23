/// - Boolean
///   - Dart通过`bool`关键字来表示布尔类型
///   - 布尔类型只有两个值：`true`和`false`
///   - 对变量进行判断时，要显式地检查布尔值
///
///     ```Dart
///     if(varname) {...} // error
///     if(varname == 0) {...} // OK
///     if(varname == null) {...} // OK
///     ```
///

void main(List<String> args) {
  // 声明布尔类型
  bool flag1 = true;
  print(flag1); // true

  bool flag2 = false;
  print(flag2); // false

  // 显式地进行判断
  var flag3;
  if (flag3 == null) {
    // if (flag3) // error
    print('真');
  } else {
    print('假');
  } // 真

// 一些特殊的判断场景
  var n1 = 0 / 0;
  print(n1); // NaN
  print(n1.isNaN); // true
}
