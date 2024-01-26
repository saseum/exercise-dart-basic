/*
  fold<T>() 는 reduce() 에서 자료구조와 같은 타입의 값만 리턴할 수 있는 점 보완한 함수
  fold 는 어떤 타입으로 리턴할 지 generic 으로 명시해줘야 함
 */

import '../utils/comparison.dart';

void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // fold<T>() 는 js 의 reduce 같은 거인듯
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);
  print(sum);
  comparison();

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '와칸다입니다. ',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);

  final cnt = words.fold<int>(0, (prev, next) => prev + next.trim().length);
  print(cnt);
}
