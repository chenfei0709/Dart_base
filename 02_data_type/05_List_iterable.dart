/// - List
///   - 遍历List
///     - forEach()
///       - 遍历列表
///     - map()
///       - 遍历并处理元素，然后生成新的列表
///     - where()
///       - 返回满足条件的数据
///     - any()
///       - 只要有一项满足条件，即返回true
///     - every()
///       - 判断是否每一项都满足条件，都满足条件才返回true

void main(List<String> args) {
  var nums = [1, 2, 3];

  // for循环进行遍历
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  // for ... in
  for (var element in nums) {
    print(element);
  }

  // forEach
  nums.forEach((element) {
    print(element);
  });

  // map
  /*
  var newNums = [];
  for (var i = 0; i < nums.length; i++) {
    newNums.add(nums[i] - nums[i]);
  }
  print(newNums);
  */
  var newNums = nums.map((e) {
    return e - e;
  }).toList();
  print(newNums); // [0, 0, 0]

  // 判断数字是否是奇数
  bool isOdd(n) => n % 2 == 1;

  // where() 返回符合条件的元素
  var oddNum = nums.where(isOdd);
  print(oddNum.toList()); // [1, 3]

  // 使用 any() 来检测是否有奇数(至少有一个奇数)
  print(nums.any(isOdd)); // true

  // 使用 every() 来检测是否都是奇数
  print(nums.every(isOdd)); // false

  // 扩展
  var pairs = [
    [1, 2],
    [3, 4]
  ];

  var flattened = pairs.expand((element) => element).toList();
  print(flattened); // [1, 2, 3, 4]

  // 折叠
  int result1 = nums.fold(2, (previousValue, element) => previousValue - element); // 2- (1- 2- 3)
  print(result1); // -4

  int result2 = nums.fold(2, (previousValue, element) => previousValue + element); // 2 + (1 + 2 + 3)
  print(result2); // 8
}
