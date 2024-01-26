void main() {
  // *functional programming 의 기본은 casting

  List<String> bp = ['로제', '지수', '제니', '리사', '리사'];

  print(bp.asMap()); // key엔 index가 들어감
  print(bp.toSet()); // 중복 제거되어 Set 변환

  Map bpMap = bp.asMap();
  print(bpMap.keys.toList());
  print(bpMap.values.toList());

  Set bpSet = Set.from(bp);
  print(bpSet.toList());
}
