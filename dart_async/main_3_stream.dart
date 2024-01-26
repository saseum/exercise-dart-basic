import 'dart:async';

void main() {
  /*
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });

  calculate(4).listen((val) {
    print('calculate(4) : $val');
  });
  */

  playAllStream().listen((val) {
    print(val);
    /*
      console result
      0 1 2 3 4 ->
      0 1000 2000 3000 4000
     */
  });
}

Stream<int> playAllStream() async* {
  /*
    yield 는 값을 하나하나 순서대로 가져올 때 사용
    yield* 는 해당되는 하나의 스트림의 모든값을 다 가져올 때까지(리턴될 때까지) 기다림 == Future 의 await 과 비슷한 기능
   */
  yield* calculate(1);
  yield* calculate(1000);
}

/*
  Stream 을 return 하고 싶으면 async* 키워드 사용하면 됨
  return 은 yield 키워드로 대체해주면 됨
 */
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    // async* 이어도 async 키워드처럼 await 키워드 사용 가능함
    await Future.delayed(Duration(seconds: 1));
  }
}
