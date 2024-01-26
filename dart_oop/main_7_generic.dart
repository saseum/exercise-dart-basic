import '../utils/comparison.dart';

/*
  generic - 타입을 외부에서 (파라미터처럼) 받을 때 사용
 */

void main() {
  Lecture<int> lec1 = Lecture(123, 'lecture1');
  lec1.printIdType();
  comparison();

  Person<int, String> p1 = Person(4, '홍길동');
  p1.printIdType();
  p1.printNameType();
}

class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType() {
    print('ID 타입 = ${id.runtimeType}');
  }
}

class Person<T, X> {
  final T id;
  final X name;

  Person(this.id, this.name);

  void printIdType() {
    print('ID 타입 = ${id.runtimeType}');
  }

  void printNameType() {
    print('Name 타입 = ${name.runtimeType}');
  }
}
