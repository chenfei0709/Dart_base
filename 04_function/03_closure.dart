/// - 作用域与闭包
///   - 作用域
///
///     ```Dart
///     void main(List<String> args) {
///     funA() {
///         print('funA');
///         funB() {
///         print('funB');
///         funC() {
///             print('funC');
///         }
///
///         return funC;
///         }
///
///         return funB;
///     }
///
///     var a = funA(); // funA
///     var b = a(); // funB
///     b(); // funC
///     }
///     ```
///
///   - 闭包
///     - Dart中闭包的实现方式与JS中完全一致
///     - 使用时机: 既能重用变量，又保护变量不被污染
///     - 实现原理: 外层函数被调用后，外层函数的作用域对象(AO)被内层函数引用着，导致外层函数的作用域对象无法释放，从而形成闭包

// 全局变量
var globalNum = 100;

void main(List<String> args) {
  void printInfo() {
    // 局部变量
    var localNum = 10;
    localNum--;
    print(localNum);
    print(globalNum);
  }

  printInfo(); // 9  // 100, 可以在函数作用域中，访问全局变量
  // 不能在全局作用域中访问局部变量
  // print(localNum); // error
  print(globalNum); // 100

  //闭包
  printInfo(); // 9  // 100
  printInfo(); // 9  // 100

  Function() parent(int money) {
    return () {
      money -= 100;
      print(money);
    };
  }

  var p = parent(1000);
  p(); // 900
  p(); // 800
  p(); // 700
}
