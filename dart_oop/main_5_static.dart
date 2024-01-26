import '../utils/comparison.dart';

void main() {
  Employee gildong = Employee('길동');
  Employee matt = Employee('맷');

  gildong.printNameAndBuilding();
  matt.printNameAndBuilding();
  comparison();

  Employee.building = '63빌딩'; // 클래스 자체에 귀속
  gildong.printNameAndBuilding();
  matt.printNameAndBuilding();
  comparison();

  Employee.printBuilding();
}

class Employee {
  // * static 은 instance 에 귀속되지 않고, class 에 귀속됨
  static String? building;
  final String name;

  Employee(
    this.name,
  );

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저희는 $building 건물에서 근무 중입니다.');
  }
}
