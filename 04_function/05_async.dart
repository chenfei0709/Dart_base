/// - 异步函数
///   - JS中，异步调用通过PPromise来实现
///     - async函数返回一个Promise. await用于等待Promise
///   - Dart中，异步调用通过Future来实现
///     - async函数返回一个Future，await用来等待Future
///   - Future 详情
///     - [Future-class](https://api.dart.dev/stable/dart-async/Future-class.html)
import 'dart:convert';

import 'package:http/http.dart' as http;

// https://httpbin.org/ip 返回ip地址
Future getIPAddress() async {
  final url = 'https://httpbin.org/ip';
  final response = await http.get(Uri.parse(url));
  // print(response.body);
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main(List<String> args) async {
  // 调用getIPAddress
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (error) {
    print(error);
  }
}
