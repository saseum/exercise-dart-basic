import '../utils/comparison.dart';

void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
  ];

  // * where() 는 js filter() 함수랑 비슷한 듯
  var bp = people.where((x) => x['group'] == '블랙핑크').toList();
  var bts = people.where((x) => x['group'] == 'BTS').toList();

  print(bp);
  print(bts);
  comparison();
}
