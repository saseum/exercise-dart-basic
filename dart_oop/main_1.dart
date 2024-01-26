import '../utils/comparison.dart';

void main() {
  Idol bp = Idol('블랙핑크', [
    '리사',
    '제니',
    '로제',
    '지수',
  ]);

  bp.sayHello();
  bp.introduce();
  comparison();

  Idol bts = new Idol('BTS', [
    'RM',
    '진',
    '슈가',
    '지민',
    '제이홉',
  ]);

  bts.sayHello();
  bts.introduce();
  comparison();

  // fromList 'named constructor'
  Idol newIdol = Idol.fromList([
    [
      '고양이',
      '강아지',
      '낙타',
      '사자',
    ],
    '동물원',
  ]);

  newIdol.sayHello();
  newIdol.introduce();
  comparison();

  // const constructor 사용으로 인스턴스 생성시 const 키워드로 선언 가능
  // *const 도 값 한번 선언 시 값 못 바꾸고, 빌드타임에 값을 알 수 있어야 함
  // *flutter 에서 약간의 효율을 올려주는데 중요한 부분
  Idol2 idol1 = const Idol2('스마일', [
    '씨익',
    '방긋',
    '호호',
    '하하',
  ]);

  Idol2 idol2 = const Idol2('스마일', [
    '씨익',
    '방긋',
    '호호',
    '하하',
  ]);

  // const 없이 객체생성시 : false - 인스턴스 생성때마다 메모리에 다르게 올라감
  // const 붙이고 객체생성시 : true - 같은 instance 가 됨 (instance 변수 같은 값일 경우)
  print(idol1 == idol2);
}

// Immutable programming - 불변 프로그래밍(선언 후 변경불가)
// class 의 변수를 final 로 선언하는 습관 필요 -> 불필요한 value 변경 및 버그 방지
class Idol2 {
  final String name;
  final List<String> members;

  // const constructor
  const Idol2(this.name, this.members);

  // * named constructor
  Idol2.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('${this.members} 로 구성돼 있습니다.');
  }
}

// Idol class
// name (이름)
// members (멤버들)
// sayHello (인사)
// introduce (멤버소개)

// constructor
class Idol {
  String name;
  List<String> members;

  // * named constructor
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

/*  [basic constructor 3] 
  Idol(String name, List<String> members)
      : this.name = name,
        this.members = members;
*/

/* [basic constructor 2] */
  Idol(this.name, this.members);

/* [basic constructor 1]
  Idol(String name, List<String> members) {
    this.name = name;
    this.members = members;
  }
*/

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('${this.members} 로 구성돼 있습니다.');
  }
}
