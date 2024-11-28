class Solution {
  String multiply(String num1, String num2) {
    //결과를 저장하기 위한 리스트(LIst<int>)
    //int m , int n
    //각 자리수를 곱하고 결과를 더하기(for문으로 순회)
    //각 자리를 정수로 변화하여 곱
    //결과 값 반환 : 현재 자리수에 곱셈 결과를 더하기, 현재 자리수에 저장, 올림 후 다음자리에 추가
    //String으로 변환

    int m = num1.length;
    int n = num2.length;
    List<int> result = List.filled(m + n, 0);
    String resultString = "";

    for (int i = m - 1; i >= 0; i--) {
      for (int j = n - 1; j >= 0; j--) {
        int n1 = int.parse(num1[i]);
        int n2 = int.parse(num2[j]);

        int sum = n1 * n2 + result[i + j + 1];
        result[i + j + 1] = sum % 10;
        result[i + j] += sum ~/ 10;
      }
    }

    for (int i = 0; i < result.length; i++) {
      if (resultString.isEmpty && result[i] == 0) {
        continue;
      }
      resultString += result[i].toString();
    }
    return resultString.isEmpty ? "0" : resultString;
  }
}
