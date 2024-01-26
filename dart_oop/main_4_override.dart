import '../utils/comparison.dart';

/*
  - method 는 객체 내부의 있는 function
  - override 는 '덮어쓰기' 의미(사전적으로 '우선시하다')
 */
void main() {
  TimesTwo tt = TimesTwo(5);

  print(tt.calculate());
  comparison();

  TimesFour tf = TimesFour(5);
  print(tf.calculate());
  comparison();
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);

  @override
  int calculate() {
    return super.calculate() * 2; // super 키워드 사용으로 부모  cal() 함수 재활용
  }

/*
  @override
  int calculate() {
    return super.number * 4;  // super 키워드 쓰는게 정석
    //return this.number * 4; // 이것도 가능
    //return number * 4;      // 이것도 가능
  }
*/
}

class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  int calculate() {
    return number * 2;
  }
}
