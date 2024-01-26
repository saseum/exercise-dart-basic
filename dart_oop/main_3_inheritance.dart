/*

** private 은 _(underscore) 로 -> 클래스, 함수, 변수 다 적용가능하며 해당 파일 내에서만 접근 가능함

상속(inheritance)
- 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
*/

import '../utils/comparison.dart';

void main() {
  Idol bp = Idol(name: '블랙핑크', membersCount: 4);
  bp.sayName();
  bp.sayMCounts();
  comparison();

  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMCounts();
  bts.sayMale();
  comparison();

  GirlGroup rb = GirlGroup('레드벨벳', 5);
  rb.sayName();
  rb.sayMCounts();
  rb.sayFemale();
  comparison();

  print(bp is Idol); // true
  print(bp is BoyGroup); // false
  print(bp is GirlGroup); // false
  comparison();

  print(bts is Idol); // true
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // false
}

// 보이그룹
class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount,
  ) : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저희는 남자아이돌입니다.');
  }
}

// 걸그룹
class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ) : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저희는 여자아이돌입니다.');
  }
}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저희는 ${this.name} 입니다.');
  }

  void sayMCounts() {
    print('${this.name} -> ${this.membersCount}명의 멤버가 있습니다.');
  }
}
