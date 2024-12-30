class Solution {
  String reverseWords(String s) {
    // 문자열을 공백으로 분리하고, 빈 문자열 제거
    List<String> words = s.trim().split(RegExp(r'\s+'));

    // 단어 순서 뒤집기
    int left = 0;
    int right = words.length - 1;
    while (left < right) {
      String temp = words[left];
      words[left] = words[right];
      words[right] = temp;
      left++;
      right--;
    }

    // 단어들을 하나의 공백으로 연결
    return words.join(' ');
  }
}
