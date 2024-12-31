class Solution {
  String removeStars(String s) {
    List<String> stack = [];

    // 문자열을 순회하면서 스택에 추가 또는 제거
    for (String char in s.split('')) {
      if (char == '*') {
        if (stack.isNotEmpty) {
          stack.removeLast(); // 직전 문자 제거
        }
      } else {
        stack.add(char); // 일반 문자는 스택에 추가
      }
    }

    return stack.join(''); // 스택의 문자들을 하나의 문자열로 결합
  }
}
