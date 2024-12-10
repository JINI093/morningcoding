class Solution {
  bool isVowel(String char) {
    return 'aeiouAEIOU'.contains(char);
  }

  String reverseVowels(String s) {
    List<String> chars = s.split('');
    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      // 왼쪽에서 모음 찾기
      while (left < right && !isVowel(chars[left])) {
        left++;
      }

      // 오른쪽에서 모음 찾기
      while (left < right && !isVowel(chars[right])) {
        right--;
      }

      // 찾은 모음들을 교환
      if (left < right) {
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;
        left++;
        right--;
      }
    }

    return chars.join('');
  }
}
