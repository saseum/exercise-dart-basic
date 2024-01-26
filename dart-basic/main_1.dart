void main() {
  //prac1();
  //prac2();
  prac3();
}

// DateTime : 시간/날짜
void prac3() {
  // * DateTime 은 이 코드가 실행이 되는 순간의 시간을 가져옴
  DateTime now = DateTime.now();
  print(now);

  DateTime? now2 = null;

  Future.delayed(Duration(seconds: 2), () {
    DateTime now2 = DateTime.now();
    print(now2);
  });

  print(now == now2); // false

  // final 의 경우 error 없음
  // *final 의 경우 빌드타임에 값을 알고 있지 않아도 됨
  final DateTime now3 = DateTime.now();

  // const 의 경우 error 발생
  // *const 의 경우 빌드 타임에 값을 알고 있어야 함 --> 코드 작성하는 순간에 그 값을 알고 있어야 함. 완전한 상수값(constant) 으로 선언하라는 의미인듯
  //const DateTime now4 = DateTime.now();

  // *빌드타임은? 컴퓨터가 이해할 수 있는 기계어로 변환되는 때(컴파일 정도로 생각하면 될듯)
}

// final vs const
void prac2() {
  // *final 로 변수 선언시 선언 뒤 변수값 변경 불가
  final String name = '종화';
  print(name);
  // name = '서종화';

  // * const 로 변수 선언시 선언 뒤 변수값 변경 불가
  const String name2 = 'jh';
  print(name2);
  //name2 = '서종화';

  // *final 과 const 키워드 선언시 타입 생략 가능(var 역할까지 다 해줌)
  const name3 = 'haha';
  final name4 = 'kaka';

  print(name3);
  print(name4);
}

// nullable vs non-nullable
void prac1() {
  // nullable
  // non-nullable
  // *변수선언시 1) 해당타입만 들어갈 수 있는 경우, 2) 해당타입과 Null 까지 들어갈 수 있는 경우로 나뉨

  String name = 'jonghwa';
  print(name);

  // name = null;   // null 에러 발생
  String? name2 = 'seo'; // *타입 뒤 '?' <-- null 입력 가능
  name2 = null; // null 입력 가능
  print(name2);

  name2 = 'Jjong';
  print(name2!); // *현재 해당값은 null 이 아니다 --> '!'
}
