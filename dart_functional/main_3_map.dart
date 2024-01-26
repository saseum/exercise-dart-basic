import '../utils/comparison.dart';

void main() {
  Map<String, String> harryPorter = {
    'Harry Porter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione': '헤르미온느',
  };

  // MapEntry 하면 새로운 Map 받아올 수 있음
  final result = harryPorter.map((key, value) =>
      MapEntry('HarryPorter Character $key', '해리포터 캐릭터 $value'));

  print(result);
  comparison();

  final keys = harryPorter.keys.map((x) => 'HPC $x').toList(); // key만 toList
  final values =
      harryPorter.values.map((x) => 'HPC $x').toList(); // value만 toList

  print(keys);
  print(values);
  comparison();

  Set bpSet = {
    '로제',
    '지수',
    '제니',
    '리사',
  };

  final newSet = bpSet.map((v) => '블랙핑크 $v').toSet();
  print(newSet);
}
