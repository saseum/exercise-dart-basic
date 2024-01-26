import '../utils/comparison.dart';

void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup bp = GirlGroup('블랙핑크');
  //IdolInterface test = IdolInterface('에이핑크'); // 문제 발생. 인스턴스화 하라고 interface 를 정의한게 아니기에 --> abstract 키워드

  bts.sayName();
  bp.sayName();
  comparison();

  print(bts is IdolInterface); // true
  print(bp is IdolInterface); // true
}

// *interface 의 signature 를 맞춰줘야 error 방지 가능 -> 일종의 강제 역할
// *협업 시 언어적 소통없어도 협업 개발자에게 의미전달 가능
class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  @override
  void sayName() {
    print('저희는 $name 이고, 보이그룹입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  @override
  void sayName() {
    print('저희는 $name 이고, 걸그룹입니다.');
  }
}

// interface
// *다트에선 똑같이 class 키워드로 선언함
// *상속은 부모가 자식에게 물려주는 개념
// *인터페이스는 특수한 구조를 강제하는 개념(강제되는 설계)
// * abstract : 실제로 instance 로 만들지 못하도록 만드는 키워드 --> 이제 method body 지울 수 있게 됨
// abstract 는 메시지로서 기능 : "해당 interface 는 instance화하지 마라", "설계용이다"
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  // *method body 채울 필요 없음
  // *해당 interface 를 구현하는 class 에 아래 method 를 강제할 때
  void sayName();
}
