import '../utils/comparison.dart';

void main() {
  final List<Map<String, String>> people = [
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '리사',
      'group': '블랙핑크',
    },
    {
      'name': '태진아',
      'group': '트로트킹',
    },
    {
      'name': '설운도',
      'group': '트로트킹',
    },
  ];

  final parsedPeople = people
      .map((val) => Person(
            name: val['name']!, // 무조건 존재한다고 '!' 달아줌.
            group: val['group']!,
          ))
      .toList();

  print(parsedPeople.toString());
  comparison();

  final bts = parsedPeople.where((x) => x.group == '트로트킹');
  print(bts);
  comparison();

  // chaining
  final result = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .where((x) => x.group == '블랙핑크')
      .toList();

  print(result);
}

// frontend 에서 class 로 구조화해서 사용함
class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}
