import '../utils/comparison.dart';

void main() {
  /*
    * reduce() 는 List 의 element 와 같은 타입의 값만 return 할 수 있음
   */
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9,
  ];

  // prev는 누계
  final result = numbers.reduce((prev, next) {
    comparison();
    print('previous = $prev');
    print('next = $next');
    print('total = ${prev + next}');

    return prev + next;
  });

  print('result = $result');
  comparison();

  List<String> words = [
    '안녕하세요',
    '저는',
    '와칸다입니다.',
  ];

  final sentence = words.reduce((prev, next) => prev + next);
  print('sentence = $sentence');
}
