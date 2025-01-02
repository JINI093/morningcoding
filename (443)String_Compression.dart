class Solution {
  int compress(List<int> chars) {
    if (chars.isEmpty) return 0;

    int writeIndex = 0; // 결과를 쓸 위치
    int count = 1;

    // 문자열을 순회하면서 연속된 문자 카운트
    for (int i = 1; i <= chars.length; i++) {
      // 현재 문자가 이전 문자와 다르거나 배열 끝에 도달한 경우
      if (i == chars.length || chars[i] != chars[i - 1]) {
        chars[writeIndex++] = chars[i - 1]; // 문자 쓰기

        // 카운트가 1보다 크면 숫자를 문자로 변환하여 추가
        if (count > 1) {
          for (String digit in count.toString().split('')) {
            chars[writeIndex++] = digit.codeUnitAt(0);
          }
        }
        count = 1;
      } else {
        count++;
      }
    }

    return writeIndex; // 압축된 배열의 길이 반환
  }
}
