/*
  새로 추가된 class 의 키워드
  oop 광들이 반기는 추가기능
 */

import '../utils/comparison.dart';

void main() {}

// final 로 클래스를 선언하면
// extends, implement, 또는 mixin 으로 사용 불가함
// 단, 같은 file 내에서는 사용가능함
final class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

// 같은 파일 내에선 상속됨
final class Idol extends Person {
  Idol(String name, int age) : super(name: name, age: age);
}

// base class 신규추가
// base 로 class 선언시 extends 는 가능하지만 implement 는 불가능함
// base, sealed, final 로 선언된 클래스만 base class를 extends 가능하다.
base class Person2 {
  final String name;
  final int age;

  Person2({
    required this.name,
    required this.age,
  });
}

// interface 로 선언하면 implement 만 가능
// 파일 외부에서 해당 클래스에 접근했을 때 기준임
// 동일 파일 내에선 그냥 일반적인 상속하듯이 사용 가능함
interface class Person3 {
  final String name;
  final int age;

  Person3({
    required this.name,
    required this.age,
  });
}

// sealed 클래스는 abstract 이면서 final 이다.
// 그리고 패턴매칭을 사용할 수 있도록 해줌
sealed class Person4 {}

class Idol2 extends Person4 {}

class Engineer extends Person4 {}

class Chef extends Person4 {}

// sealed class 로 사용하게 되면 exhausted matching : 모든 케이스가 다 매칭이 됐는지 확인하는 기능을 추가받게 됨.
// 추가로 abstract과 final class 가 됨
// 이것이 sealed class 의 기능임
String whoIsHe(Person4 person) => switch (person) {
      Idol2 i => '아이돌',
      Engineer e => '엔지니어',
      Chef c => '쉐프',
      _ => '나머지',
    };
