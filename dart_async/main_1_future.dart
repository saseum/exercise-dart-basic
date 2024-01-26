// ignore_for_file: unused_local_variable

import '../utils/comparison.dart';

// 2개의 파라미터 받음
// param1 - 지연할 기간 Duration
// param2 - 지연시간이 지난 후 실행할 함수
/*
Future.delayed(Duration(seconds: 2), () {
  print('Delay 끝');
});
*/
void main() async {
  // *Future : 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리'); // 미래에 받아올 String
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print('함수 시작');

  /*
    *await 는 Future 를 return 하는 함수만 await 키워드 붙일 수 있음
   */
  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('$result1, $result2');
}

Future<int> addNumbers(int num1, int num2) async {
  print('계산 시작 : $num1 + $num2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 : $num1 + $num2 = ${num1 + num2}');
  });

  print('===== 함수 완료 : $num1 + $num2 =====');

  return num1 + num2;
}
