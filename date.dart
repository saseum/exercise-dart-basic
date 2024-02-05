void main() {
  DateTime now = DateTime.now();
  print(now);
  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
  print(now.millisecond);

  print('----------------');

  // duration 은 기간을 말함
  Duration duration = Duration(seconds: 60);
  print(duration);
  print(duration.inMinutes);
  print(duration.inMilliseconds);

  DateTime specificDays = DateTime(
    2017,
    11,
    23,
  );

  print('----------------');

  print(specificDays);

  print('----------------');

  final difference = now.difference(specificDays);
  print(difference);
  print(difference.inDays);
  print(difference.inHours);
  print(difference.inMinutes);

  print('----------------');

  print(now.isBefore(specificDays));

  print('----------------');

  DateTime addTime = now.add(Duration(
    hours: 10,
  ));
  print(addTime);

  print('----------------');

  DateTime subtractTime = now.subtract(Duration(
    hours: 5,
  ));

  print(subtractTime);
}
