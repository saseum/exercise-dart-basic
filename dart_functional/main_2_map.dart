import '../utils/comparison.dart';

void main() {
  List<String> bp = ['로제', '지수', '리사', '제니'];

  var bp2 = bp.map((x) {
    return '블랙핑크 $x';
  }).toList();

  bp2.forEach((element) {
    print(element);
  });
  comparison();

  // arrow function
  var bp3 = bp.map((x) => '블랙핑크 $x');
  bp3.forEach((element) => print(element));
  comparison();

  // 실사용 예제 : [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '13579';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  parsed.forEach((e) => print(e));
  comparison();
}
