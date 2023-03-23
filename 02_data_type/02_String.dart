/// - String
///   - 声明字符串 (`String`)
///     - 单引号，双引号都可以
///     - 三个引号可以声明包含换行符的字符串
///   - 常见API
///     - [String-class](https://api.dart.cn/stable/dart-core/String-class.html)
///   - 正则表达式
///     - `RegExp(r'正则表达式')`
///     - `RegExp(r'\d+'); // 匹配数字`

void main(List<String> args) {
  // 声明字符串
  String str1 = 'Hello, World'; // 单引号
  print(str1); // Hello, World
  String str2 = "你好，世界"; // 双引号
  print(str2); // 你好，世界

  // 三引号
  String str3 = '''Hello
  World''';
  print(str3);

  // 常见操作
  // 字符串拼接
  print(str1 + ' + ' + str2); // Hello, World + 你好，世界
  print('$str1 + $str2'); // Hello, World + 你好，世界

  // 字符串分割
  print(str1.split('')); // [H, e, l, l, o, ,,  , W, o, r, l, d]

  // 字符串裁切
  print('   abc   '.trim()); // abc

  // 判断字符串是否为空
  print(''.isEmpty); // true
  print(''.isNotEmpty); // false

  // 字符串替换
  print(str1.replaceAll('World', 'Dart')); // Hello, Dart
  // 正则替换
  print('h1k2d3n4b5a'.replaceAll(RegExp(r'\d+'), '_')); // h_k_d_n_b_a

  // 通过正则匹配手机号
  var isPhoneNumber = RegExp(r'^1\d{10}$');
  print(isPhoneNumber.hasMatch('13262772458')); // true
  print(isPhoneNumber.hasMatch('1326277245')); // false

  // 查找字符串
  print(str1.contains('e')); // true
  // 定位字符串
  print(str1.indexOf('e')); // 1
}
