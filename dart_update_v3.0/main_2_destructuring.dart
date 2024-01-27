/*
  - 패턴매칭과 디스트럭쳐링이 추가됨
  - 디스트럭쳐링: 값을 받아올 때 값을 분해한 상태에서 받아올 수 있음
  - Record 에만 추가된 것이 아니라 Dart 내 모든 dataType 에 패턴을 디스트럭쳐링 할 수 있음
  - js 의 구조분해할당 과 패턴매칭 개념을 그대로 가져온 듯
  - 정확하게 타입과 형태를 맞춰주면 변수를 2번 선언할 수 없이 선언문에서 바로 디스트럭쳐링 해서 이름을 지정해줄 수 있음
  - 거의 대부분의 자료구조에서 적용 가능해짐
 */

import '../utils/comparison.dart';

void main() {
  // 이렇게 하면 매칭이 1:1 로 됨. name 엔 '민지'가 들어가고 age 엔 20 이 들어감
  final (name, age) = ('민지', 20);

  print('$name, $age');
  comparison();

  // List 에서도 destructuring
  final newJeans = ['민지', '해린'];
  final [mem1, mem2] = newJeans;
  final [String m1, String m2] = newJeans; // 타입 명시도 가능

  print('$mem1, $mem2');
  print('$m1, $m2');
  comparison();

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  // x 는 1, y 는 2, 그리고 z 는 마지막값인 8을 가져오고 싶을 때(중간을 전부 생략해버리고 싶을 때) ==> ... 사용 (js 에서 그대로 가져온 기능인듯)
  // rest matching => * 한번(한곳)만 쓸 수 있다. 여러개는 못씀.
  final [x, y, ..., z] = numbers;

  print('$x, $y, $z'); // 1, 2, 8
  comparison();

  // ... 으로 생략돼버린 요소들을 쓰고 싶을 때 ... 뒤에 이름을 명시해주면 됨(꼭 이름이 rest 가 아니어도 됨)
  final [xx, yy, ...rest, zz] = numbers;
  print('$xx, $yy, $zz'); // 1, 2, 8
  print('$rest'); // 중간에 있던 값들을 전부 List 로 가져옴 [3, 4, 5, 6, 7];
  comparison();

  // ignore (_ 키워드) -> 무시하라(변수이름 앞에 쓰는 그게아님)
  // 가령 numbers 리스트에서 마지막 숫자(8) 을 무시하고 싶을 때 사용 (여러번 사용 가능)
  // 무시한 요소들을 가져올 방법은 존재하지 않음. 실제로 삭제되는 것
  final [a, _, b, ...rest2, c, _] = numbers;
  print('$a, $b, $c'); // 1, 3, 7
  print('$rest2'); // [4, 5, 6]

  // Map 도 destructuring 가능
  final minjiMap = {
    'name': 'Minji',
    'age': 20,
  };

  // Map 디스트럭쳐링할 때 key 는 무조건 matching 해줘야 함
  final {'name': name3, 'age': age3} = minjiMap;
  print('$name3, $age3'); // 민지, 20
  comparison();

  // Idol class 구조로 pattern matching 가능
  final minjiIdol = Idol(name: '민지', age: 19);
  // 이런 destructuring 도 됨
  final Idol(name: name4, age: age4) = minjiIdol;
  print('$name4, $age4'); // 민지, 19
}

class Idol {
  final String name;
  final int age;

  Idol({
    required this.name,
    required this.age,
  });
}
