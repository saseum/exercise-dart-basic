import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream();

  // even num
  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val) {
    print('Listener-1 : $val');
  });

  // odd num
  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val) {
    print('Listener-2 : $val');
  });

  // 가장 기본적인 stream 사용법
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
