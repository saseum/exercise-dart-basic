/*
  mixin 은 class 에 코드를 재사용하는 방법이다.
  mixin 은 class 가 다른 class 를 상속받는 것과 유사하지만,
  단독 클래스가 아니라 다른 클래스와 함께 사용된다.
  mixin 을 사용하면 클래스 간 코드를 공유하고 코드 중복을 줄일 수 있다.

  mixin 을 사용하기 위해 with 키워드를 사용한다. 
  일반적으로 mixin 클래스는 클래스의 일부 기능을 제공하기 위해 사용된다.
  mixin 클래스는 클래스로 인스턴스화 할 수 없으며, 다른 클래스에 믹스인될 때만 사용된다.

  mixin 은 기능의 재사용과 클래스간 코드공유, 모듈화를 허용해줌
  mixin 은 다중상속을 지원하므로 하나의 클래스가 여러 mixin 을 가질 수 있다.

  - mixin 의 제한 사항
  1) mixin 은 생성자를 가질 수 없다.
  2) mixin 은 다른 클래스나 mixin 을 상속받을 수 없다.
  3) mixin 을 사용하는 클래스는 해당 mixin 에 정의된 메서드를 구현해야 한다.
 */

mixin Swimming {
  void swim() {
    print('수영 중 - 어푸어푸');
  }
}

mixin Sound {
  void bark() {
    print('짖는 중 - 멍멍');
  }
}

// Animal 클래스에 믹스인하기 위해 Swimming mixin 사용
class Animal with Swimming, Sound {
  final String name;

  Animal(this.name);
}

void main() {
  Animal dog = Animal('멍멍이');

  dog.swim(); // mixin 의 swim() 메서드 호출가능
  dog.bark(); // 여러 mixin 을 믹스인 가능
}
