import '../utils/comparison.dart';

/*
  - 패턴매칭 적극적으로 활용해볼 예제 -> validation 에서 자주 활용가능할 듯
 */
void main() {
  // validation 에서 자주 쓸 수 있게 설계됨
  final minji = ('민지', 20);

  // as 키워드로 type casting 을 해 받아주면 type 보장 확실
  final (name as String, age as int) = minji;

  print('$name, $age');
  comparison();

  switcher('aaa'); // matching
  switcher('bbb'); // no match
  switcher(['1', '2']); // matching
  switcher([1, 2]); // no match --> matching
  switcher([1, 2, 3]); // matching
  switcher([1, 2, 3, 6]); // no match
  switcher([6, 9]); // matching
  switcher([6, '9']); // no match
  switcher(6); // matching
  switcher(18); // no match
  comparison();

  print(switcher2('haha', true));
  print(switcher3(7, true)); // matching
  print(switcher3(7, false)); // no match
  comparison();

  forLooper();
  comparison();

  ifMatcher();
}

void switcher(dynamic anything) {
  if (anything is int) {
    switch (anything) {
      case < 10 && > 5: // switch case 문에 조건문 사용이 가능해짐
        print('match: < 10 && > 5');
      default:
        print('no match');
    }
  } else {
    switch (anything) {
      case 'aaa':
        print('match: $anything');
      case ['1', '2']:
        print('match : [1, 2]');
      case [_, _, _]: // List 인데 3개의 값이 들어간 어떤 값이든 가능하다는 뜻
        print('match: [_, _, _]');
      case [int a, int b]:
        print('match: [int $a, int $b]');
      default:
        print('no match');
    }
  }
}

// arrow func 로 switch 바로 return
// case 키워드 없이 바로 사용가능
// default 는 언더스코어(_) 로 표현
// 정수만 matching 시키는 switcher 를 만들어봄
String switcher2(dynamic val, bool condition) => switch (val) {
      int n => 'match: $n',
      _ => 'no match', // _ 는 default
    };

// 조건을 하나 더 넣고 싶을 땐 when 키워드 사용
String switcher3(dynamic val, bool condition) => switch (val) {
      5 => 'match: $val',
      7 when condition => 'match: 7 and true',
      _ => 'no match', // _ 는 default
    };

// 패턴매칭을 for Loop 에서 사용
void forLooper() {
  final List<Map<String, dynamic>> members = [
    {
      'name': '민지',
      'age': 20,
    },
    {
      'name': '해린',
      'age': 19,
    },
    {
      'name': '하이',
      'age': 21,
    },
    {
      'name': '반가',
      'age': 22,
    },
  ];

  for (final member in members) {
    print('${member['name']}, ${member['age']}');
  }
  comparison();

  // 디스트럭쳐링할 때 key값은 무조건 선언해줘야 함
  for (var {'name': name, 'age': age} in members) {
    print('$name, $age');
  }
}

// if문도 패턴매칭 가능
void ifMatcher() {
  final minji = {
    'name': '민지',
    'age': 20,
  };

  // if문 안에서 구조를 validation 하면서 동시에 디스트럭쳐링을 하고 싶을 때
  // if 조건문 내 case 키워드 사용
  if (minji case {'name': String name, 'age': int age}) {
    print('$name, $age');
  }
}
