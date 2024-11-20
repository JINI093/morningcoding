class Solution {
  int calPoints(List<String> ops) {
    List<int> scores = [];
    
    for(String op in ops) {
      switch(op) {
        case 'C': // 직전 점수 취소
          if(scores.isNotEmpty) {
            scores.removeLast();
          }
          break;
          
        case 'D': // 직전 점수의 2배
          if(scores.isNotEmpty) {
            scores.add(scores.last * 2);
          }
          break;
          
        case '+': // 직전 점수 합
          if(scores.length >= 2) {
            scores.add(scores[scores.length-1] + scores[scores.length-2]);
          }
          break;
          
        default: // 숫자인 경우 점수 추가
          scores.add(int.parse(op));
      }
    }
    
    return scores.isEmpty ? 0 : scores.reduce((sum, score) => sum + score);
  }
}