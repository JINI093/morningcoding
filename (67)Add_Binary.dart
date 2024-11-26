class Solution {
  String addBinary(String a, String b) {
    // a, b 문자열 초기화 
    // 두 문자열 끝에서부터 순회하며 더하기(while문)
    // a의 자리가 바뀌면 더함
    // b의 자리가 바뀌면 더함
    // 현재 자리의 결과에 따라 올림
    // 결과를 뒤집어서 반환

    int i = a.length - 1;
    int j = b.length - 1;
    int carry = 0; // 올림처리
    StringBuffer result = StringBuffer(); // 결과를 저장할 StringBuffer 초기화

    while (i >= 0 || j >= 0 || carry > 0) {
        int sum = carry;

        if (i >= 0) {
            sum += a[i--] == '1' ? 1 : 0;
        }

        if (j >= 0) {
            sum += b[j--] == '1' ? 1 : 0;
        }

        result.write(sum % 2); // 결과에 현재 자리의 이진수 추가
        carry = sum ~/ 2; // 올림 계산
    }

    return result.toString().split('').reversed.join(''); // 결과를 뒤집어서 반환
  }
}