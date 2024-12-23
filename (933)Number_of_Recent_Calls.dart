class RecentCounter {
  final List<int> calls = []; // 호출 시간을 저장할 리스트

  RecentCounter();

  int ping(int t) {
    calls.add(t); // 현재 호출 시간 추가

    // 3000밀리초보다 오래된 호출 제거
    while (calls.isNotEmpty && calls[0] < t - 3000) {
      calls.removeAt(0);
    }

    return calls.length; // 현재 범위 내의 호출 수 반환
  }
}
