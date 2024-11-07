class Solution {
  int romanToInt(String s) {
    //로마 숫자 맵핑
    Map<String, int> romanValues = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    };

    int result = 0;
    int preValue = 0;

    for (int i = s.length - 1; i >= 0; i--) {
        int currentValue = romanValues[s[i]]!;
        //현재 값이 이전 값보다 작거나 같으면 더하기
        if (currentValue >= preValue) {
            result += currentValue;
        } else {
            result -= currentValue;
        }

        preValue = currentValue;
    }
    return result;
  }
}