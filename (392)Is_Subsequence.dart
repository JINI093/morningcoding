class Solution {
  bool isSubsequence(String s, String t) {
    // s가 빈 문자열이면 항상 true
    if (s.isEmpty) return true;

    int sIndex = 0; // s의 현재 위치

    // t의 각 문자를 순회
    for (int i = 0; i < t.length && sIndex < s.length; i++) {
      // t의 현재 문자가 s의 현재 문자와 일치하면
      if (t[i] == s[sIndex]) {
        sIndex++; // s의 다음 문자로 이동
      }
    }

    // s의 모든 문자를 찾았는지 확인
    return sIndex == s.length;
  }
}
