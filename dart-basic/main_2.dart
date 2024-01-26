void main() {
  //prac1();
  //prac2();
  prac3();
}

// Set 자료구조
void prac3() {
  Set<String> set = {'hello', 'aloha', 'welcome', '안녕'};
  var ele = set.elementAt(0);
  print(ele);
  set.add('곰방와');
  print(set);
  set.add('안녕'); // *set 은 중복요소 안됨
  print(set);
}

// Map 자료구조
void prac2() {
  Map<String, String> map = {
    'name': 'jonghwa',
    'age': '30',
    'address': 'seoul',
    'gender': 'male',
  };

  print(map);
  print(map['name']);
  print(map.keys);
  print(map.values);

  map.forEach((key, value) {
    print('key = $key, value = $value');
  });

  map['job'] = 'dvlp';
  print(map['job']);

  map.remove('age');
  print(map);
}

// List 자료구조
// * dart 에선 자료구조 3개 지원: List, Map, Set (배열은 없음)
void prac1() {
  List<String> dogs = ['치와와', '포메', '푸들'];
  List<int> nums = [1, 2, 3, 4, 5];

  print(dogs);
  print(nums);

  // *index 로 리스트내부값 접근
  print(dogs[0]);
  print(dogs[dogs.length - 1]); // 푸들
}
