/// - Set
///   - Set是一个无序的，元素唯一的集合
///   - Set有字面量和构造函数两种声明方式 (`字面量中用大括号`)
///   - 无法通过下标取值
///   - 具有集合特有的操作
///     - 例如: 求交集，并集，差集等
///   - 常用API
///     - [Set-class](https://api.dart.cn/stable/dart-core/Set-class.html)

void main(List<String> args) {
  // 字面量
  var nums = <int>{1, 2, 3};
  print(nums); // {1, 2, 3}

  var nums2 = <int>{1, 2, 2, 3}; // 重复数据无效
  print(nums2); // {1, 2, 3}

  // 构造函数
  var fruits = new Set();
  fruits.add('香蕉');
  fruits.add('苹果');
  fruits.add('橘子');
  print(fruits); // {香蕉, 苹果, 橘子}
  print(fruits.toList()); // [香蕉, 苹果, 橘子]

  List myNums = [1, 2, 3, 3, 4];
  print(myNums.toSet()); // {1, 2, 3, 4}, 可以将重复的元素过滤掉

  // 集合特有的操作
  var caocao = new Set();
  caocao.addAll(['张辽', '司马懿', '关羽']);
  print(caocao); // {张辽, 司马懿, 关羽}

  var liubei = new Set();
  liubei.addAll(['关羽', '张飞', '诸葛亮']);
  print(liubei); // {关羽, 张飞, 诸葛亮}

  // 求交集
  print(caocao.intersection(liubei)); // {关羽}

  // 求并集
  print(caocao.union(liubei)); // {张辽, 司马懿, 关羽, 张飞, 诸葛亮}

  // 求差集
  print(caocao.difference(liubei)); // {张辽, 司马懿}
  print(liubei.difference(caocao)); // {张飞, 诸葛亮}

  // 返回第一个元素
  print(caocao.first); // 张辽

  // 返回最后一个元素
  print(caocao.last); // 关羽

  // 集合不能通过下标取值
  // print(caocao[1]); // error
}
