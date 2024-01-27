/*
  mixin class 새로 생겼음
  class 앞에도 mixin 키워드 붙일 수 있게 됨

  - 특징
  1) mixin 은 extends 나 with 를 사용할 수 없다. 
  그렇기 때문에 mixin class 도 마찬가지로 사용 불가능하다.
  2) class 는 on 키워드를 사용할 수 없다. 
  그렇기 대문에 mixin class 도 on 키워드를 사용할 수 없다.

  - 정리: mixin 에서 안되는 건 mixin class 에서도 사용할 수 없다.
 */

mixin class AnimalMixin {
  String bark() {
    return '멍멍';
  }
}

class Dog with AnimalMixin {}
