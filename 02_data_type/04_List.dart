/// - List
///   - Dart中的数组，由`List`对象表示。List有两种声明方式
///     - 字面量方式
///
///       ```Dart
///       List list = []; // 不限定元素的数据类型
///       List list = <int>[]; // 限定元素的数据类型(int)
///       ```
///
///    - 构造函数方式
///
///      ```Dart
///       List list = new List.empty(growable: true); // 不限制长度的空列表
///       List list = new List.filled(3, 0); // 声明指定长度的填充列表
///       ```
///
///   - 扩展操作符 (...)
///
///     ```Dart
///     var list = [1, 2, 3];
///     var list2 = [0, ...list]; // [0, 1, 2, 3]
///     ```

///   - 常用API
///     - [List-class](https://api.dart.cn/stable/dart-core/List-class.html)

void main(List<String> args) {
  //  声明List - 字面量
  List l1 = ['a', 'b', 'c', 1, 2, 3];
  print(l1); // [a, b, c, 1, 2, 3]

  List l2 = <int>[1, 2, 3]; // 限定元素类型的声明方式
  print(l2); // [1, 2, 3]

  // 通过构造函数的声明方式
  // var l3 = new List(); // error
  var l3 = new List.empty(growable: true);
  l3.add(1);
  print(l3); // [1]

  var l4 = new List.filled(3, 6);
  print(l4); // [6, 6, 6]

  // 扩展操作符
  var l5 = [0, ...l4];
  print(l5); // [0, 6, 6, 6]

  var l6;
  var l7 = [7, ...?l6];
  print(l7); // [7]

  // 返回列表的长度
  print(l1.length); // 6

  // 列表的反转
  print(l1.reversed.toList()); // [3, 2, 1, c, b, a]

  // 添加元素
  List l8 = [1];
  l8.addAll([4, 5, 6]);
  print(l8); // [1, 4, 5, 6]
  // 在指定的位置添加元素
  l8.insert(1, 9);
  print(l8); // [1, 9, 4, 5, 6]

  // 删除元素
  List l9 = [1, 4, 5, 6];
  l9.remove(6);
  print(l9); // [1, 4, 5]
  // 根据下标删除元素
  l9.removeAt(1);
  print(l9); // [1, 5]

  // 清空
  List l10 = [1, 2, 3];
  l10.clear();
  print(l10); // []
  print(l10.length); // 0
  print(l10.isEmpty); // true

  //合并元素
  List words = ['Hello', 'World'];
  print(words.join('-')); // Hello-World
}
