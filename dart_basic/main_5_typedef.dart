void main() {
  // Operation 타입 시그니처가 같은(부합되는) 모든 함수를 변수마냥 대입 가능
  Operation operation = add;
  int result = operation(1, 2, 3); // add 함수 실행

  print(result); // 6 출력

  operation = subtract; // operation 를 subtract 으로 교체
  int result2 = operation(4, 2, 1);

  print(result2); // 1 출력

  // *typedef 실사용 예시

  // add 함수 인자로 입력
  int rst1 = calculate(4, 2, 1, add); //  7

  // subtract 함수 인자로 입력
  int rst2 = calculate(4, 2, 1, subtract); // 1

  // *익명 애로우함수를 인자로 입력
  int rst3 = calculate(4, 2, 1, (x, y, z) => x * y * z); // 8

  print('rst1 = $rst1, rst2 = $rst2, rst3 = $rst3');
}

// *typedef 는 함수와 비슷하지만 함수의 body 가 없음
// 덧셈 or 뺄셈 다 가능한 Operation 선언
// 간단한 형태의 typedef 가 되도록 선언
// *signature 라고 함(시그니처)

typedef Operation = int Function(int x, int y, int z);

// *typedef 의 파라미터와 완전히 일치하게 함수 만들어줘야 함

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;

// *실제 사용 예시
// *Operation typedef 를 인자로 받음(뭐가 될 진 몰라도)
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
