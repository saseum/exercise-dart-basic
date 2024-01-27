/*
  [dart_update_v3.0] Flutter 3.10, Dart 3.0 업데이트 신규문법 정리 directory

  - Record : 파이썬 tuple 과 같음
 */

import '../utils/comparison.dart';

void main() {
  final result = nameAndAge({
    'name': '민수',
    'age': 20,
  });

  /*
    tuple(다트에선 record) 내 요소 접근하려면 .$n (n = 1, 2, 3, ...)
   */

  print(result);
  print(result.$1);
  print(result.$2);
  comparison();

  final result2 = getNewJeansWithType2();

  for (final item in result2) {
    print('${item.$1}, ${item.$2}');
  }
  comparison();

  final result3 = getNewJeansWithType3();

  for (final item in result3) {
    print('${item.name}, ${item.age}');
  }
  comparison();

  final result4 = getMinji();
  print(result4);
  print(result4.$1);
  print(result4.$2);
  print(result4.$3);
}

// Record
(String, int) nameAndAge(Map<String, dynamic> json) {
  /* 
    소괄호를 통해 반환해주면 타입의 순서가 보장
    소괄호를 통해 반환해주면 tuple 이 생성, 반환
    tuple 은 타입의 순서를 보장
  */
  return (json['name'] as String, json['age'] as int);
}

// *Map 의 generic 을 적절하게 지정하기 어려움
List<Map<String, dynamic>> getNewJeans() {
  return [
    {
      'name': '민지',
      'age': 20,
    },
    {
      'name': '해린',
      'age': 18,
    },
  ];
}

// *List generic 으로 record 로 받음
List<(String, int)> getNewJeansWithType() {
  return [
    (
      '민지',
      20,
    ),
    (
      '해린',
      18,
    ),
  ];
}

// *record 에 type 의 명을 지정해줄 수 있음
List<(String name, int age)> getNewJeansWithType2() {
  return [
    (
      '민지',
      20,
    ),
    (
      '해린',
      18,
    ),
  ];
}

// *실제로 named param 처럼 named record 사용 가능. 값의 이름을 지정해 반환하는 방법 (중괄호{} 로 감싸준다)
List<({String name, int age})> getNewJeansWithType3() {
  return [
    (
      name: '민지',
      age: 20,
    ),
    (
      name: '해린',
      age: 18,
    ),
  ];
}

// *record 요소 숫자는 무한히 가능
(String name, String group, int age) getMinji() {
  return ('민지', '뉴진스', 19);
}
