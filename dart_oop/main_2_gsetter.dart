import '../utils/comparison.dart';

void main() {
  Idol bp = Idol('블랙핑크', [
    '리사',
    '제니',
    '로제',
    '지수',
  ]);

  Idol bts = new Idol('BTS', [
    'RM',
    '진',
    '슈가',
    '지민',
    '제이홉',
  ]);

  print('bp.firstMember = ${bp.firstMember}');
  print('bts.firstMember = ${bts.firstMember}');
  comparison();

  // *setter 사용법
  // set firstMember 에 소괄호() 필요없이 바로 =(대입) 사용
  bp.firstMember = '코드팩토리';
  bts.firstMember = '아이언맨';

  print('bp.firstMember = ${bp.firstMember}');
  print('bts.firstMember = ${bts.firstMember}');
  comparison();

  print(bp.members);
  print(bts.members);
  comparison();
}

// getter / setter
// 데이터 가져올 때 / 데이터를 설정할 때
class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  // * named constructor
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('${this.members} 로 구성돼 있습니다.');
  }

  // *getter (String 을 return 하는 getter)
  // get 키워드 사용 - 간단한 데이터 가공할 때 사용
  // 파라미터 받는 소괄호() 없이 중괄호{} 만 넣어주면 됨
  String get firstMember {
    return this.members[0];
  }

  // 이렇게 해도 get 키워드 사용한 getter 와 같음
  // 로직이 많이 들어가는 상황에선 이런 식으로 함수 형식으로 사용(뉘앙스의 차이임)
  String getFirstMember() {
    return this.members[0];
  }

  // *setter
  // set 키워드 사용
  // 소괄호() 와 중괄호{} 같이 사용
  // *오로지 하나의 param 만 적용 가능
  set firstMember(String name) {
    String originFirstMember = this.members[0];
    this.members[0] = name;
    this.members.add(originFirstMember);
  }
}
