/* Dart数据类型 - 其他

- Runes(符文)
  - Runes对象是一个32位字符对象。它可以把文字转换成符号表情或特定文字。
  - print('\u{1f44d}') // 输出👍
  - https://copychar.cc/
- Symbol
  - 在Dart中符号用#开头来表示的标识符
- dynamic
  - 动态数据类型
*/

void main(List<String> args) {
  var str = '👍';
  print(str); // 👍
  print(str.length); // 2, UTF-16
  print(str.runes.length); // 1, UTF-32

  // Runes可以将UTF-32字符集表示的内容转成符号
  Runes input = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input)); // 🚀

  // Symbol
  var a = #abc;
  print(a); // Symbol("abc")
  var b = new Symbol('abc');
  print(b); // Symbol("abc")

  print(a == b); // true
  print(#abc == new Symbol('abc')); // true

  // 声明动态类型的变量
  dynamic foo = 'bar';
  foo = 123;
  print(foo); // 123
}
