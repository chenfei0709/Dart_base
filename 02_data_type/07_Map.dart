/// - Map
///   - Map是一个无序的`键值对(key-value)映射`。通常被称为**哈希**或**字典**。
///   - 声明方式
///
///     ```Dart
///     var map = {key1: value1, key2: value2};
///     var map = new Map();
///     map['key'] = value;
///     ```
///
///   - 常用API
///     - [Map-class](https://api.dart.cn/stable/dart-core/Map-class.html)

void main(List<String> args) {
  // 字面量
  var map1 = {
    '姓名': '张三',
    '年龄': 20,
  };
  print(map1); // {姓名: 张三, 年龄: 20}

  // 构造函数
  var map2 = new Map();
  map2['姓名'] = '李四';
  map2['年龄'] = 22;
  print(map2); // {姓名: 李四, 年龄: 22}

  // 访问属性
  var wangWu = {
    '姓名': '王五',
    '年龄': 18,
  };
  print(wangWu['姓名']); // 王五
  print(wangWu['xxx']); // null

  // 判断Map中的key是否存在
  print(wangWu.containsKey('姓名')); // true
  print(wangWu.containsKey('xxx')); // false

  //获取Map中所有的key
  print(wangWu.keys); // (姓名, 年龄)

  //获取Map中所有的value
  print(wangWu.values); // (王五, 18)

  // 根据条件进行删除
  wangWu.removeWhere((key, value) => key == '性别');
  print(wangWu); // {姓名: 王五, 年龄: 18}

  //赋值
  // 普通赋值
  var zhaoLiu = {
    '姓名': '赵6',
    '年龄': 40,
  };
  zhaoLiu['姓名'] = '赵六'; // 存在则替换
  print(zhaoLiu); // {姓名: 赵六, 年龄: 40}
  zhaoLiu['性别'] = '男'; // 不存在则添加
  print(zhaoLiu); // {姓名: 赵六, 年龄: 40, 性别: 男}

  // 如果key不存在，才赋值。如果key已经存在，则不赋值。
  var sunQi = {
    '姓名': '孙7',
    '年龄': 50,
  };
  sunQi.putIfAbsent('姓名', () => '孙七'); // 存在则不替换
  print(sunQi); // {姓名: 孙7, 年龄: 50}
  sunQi.putIfAbsent('性别', () => '女'); // 不存在则添加
  print(sunQi); // {姓名: 孙7, 年龄: 50, 性别: 女}
}
