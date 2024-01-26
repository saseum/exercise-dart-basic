/*
여러개의 List 를 하나로 합칠 때 많이 사용
 */
void main() {
  List<int> even = [
    2,
    4,
    6,
    8,
  ];

  List<int> odd = [
    1,
    3,
    5,
    7,
  ];

  // cascading operator
  // ... ==> 완전히 새로운 List 에 값을 풀어넣을 수 있음

  print([even, odd]);
  print([...even, ...odd]); // List 를 펼쳐서 뿌림

  print(even == [...even]); // false
}
