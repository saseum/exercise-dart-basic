void main() {
  //var result = addNumbers(1, 2, 3);
  //print(result);

  //addNumbers2(1, 2, 3);

  //addNumbers3(1);

  //addNumbers4(1);

  //addNumbers5(z: 10, x: 15, y: 30); // named parameter 는 이처럼 naming 해서 파라미터 입력
  //addNumbers5(y: 10, x: 20); // named parameter 에서 optional 하게 파라미터 전달 ==> z는 null 출력됨
  //addNumbers5(y: 10, x: 5); // z 의 경우 기본값인 10으로 출력됨을 확인가능

  //int result = addNumbers6(y: 10, z: 20, 3, 5);
  //print(result);

  int rst = addNumbers7(y: 1, z: 2, 3);
  print(rst);
}

// arrow function(화살표함수)
// arrow 바로 뒤에 오는 연산 또는 값이 반환값임
addNumbers7(int x, {required int y, required int z}) => x + y + z;

// * 반환타입 지정
// named 와 positional param을 혼합사용
int addNumbers6(
  int x,
  int x2, {
  required int y,
  required int z,
}) {
  print('x=$x, x2=$x2, y=$y, z=$z');
  return x + x2 + y + z;
}

// *named parameter - 이름이 있는 파라미터(순서가 중요치 않음) - required 키워드 사용
// *named parameter 에서 optional parameter 를 할 수 있는 방법은? -> required 키워드 지우면 됨(대신 '?' 키워드나 기본값 입력해줘야함)
addNumbers5({
  required int x,
  required int y,
  int z = 10, // ? 혹은 기본값 처리
}) {
  print('x = $x, y = $y, z = $z');
}

// *optional parameter - 있어도 되고 없어도 되는 파라미터
// * [] 쳐주면 해당 파라미터는 없어도 됨
addNumbers4(int x, [int y = 10, int z = 2]) {
  print('$x, $y, $z'); // 기본값으로 출력됨
}

// *optional parameter - 있어도 되고 없어도 되는 파라미터
// * [] 쳐주면 해당 파라미터는 없어도 됨
addNumbers3(int x, [int? y, int? z]) {
  print('$x, $y, $z'); // null 이 출력됨
}

// *parameter / argument - 매개변수
// *positional parameter - 순서가 중요한 파라미터
addNumbers2(int x, int y, int z) {
  int sum = x + y + z;

  print(sum % 2 == 0 ? '짝수입니다.' : '홀수입니다.');
}

// 세개의 숫자 (x,y,z) 를 더하고 짝수 or 홀수인지 알려주는 함수
String addNumbers(int x, int y, int z) {
  var sum = x + y + z;

  return sum % 2 == 0 ? 'even number' : 'odd number';
}
