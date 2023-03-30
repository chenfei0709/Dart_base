/// # Dart基础 - 运算符
///
/// - 地板除 (~/)
/// - 类型判断运算符 (is | is!)
/// - 避空运算符 (?? | ??=)
/// - 条件属性访问 (?.)
/// - 级联运算符 (..)
///
///   ```Dart
///   myObject.myMethod(); // 返回myMethod的返回值
///   myObject..myMethod(); // 返回myObject对象的引用
///   ```
///

void main(List<String> args) {
  // 地板除
  print(7 / 4); // 1.75
  print(7 ~/ 4); // 1, 计算结果向下取整

  // 类型判断运算符
  List list = [];
  if (list is List) {
    print('list is List'); // list is List
  } else {
    print('list is not List');
  }

  if (list is! List) {
    print('不是列表');
  } else {
    print('是列表'); // 是列表
  }

  // 避空运算符
  var foo;
  // foo ?? 0: 如果foo是null, 则返回0; 如果foo不是null, 则返回foo本身.
  print(foo ?? 0); // 0
  foo = 6;
  print(foo ?? 0); // 6

  var a;
  // if (a == null) {
  //   a = 3;
  // }
  a ??= 3;
  print(a); // 3
  a ??= 6; // a不为空, 赋值失败
  print(a); // 3

  // 条件属性运算符(保护可能为空的属性)
  var obj;
  // print(obj.length); // error
  print(obj?.length); // null

  // 级联运算符
  Set s1 = new Set();
  s1.add(1);
  s1.add(2);
  s1.add(3);
  s1.remove(2);
  print(s1); // {1, 3}

  Set s2 = new Set();
  s2
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(2);
  print(s2); // {1, 3}
}
