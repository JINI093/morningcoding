class Solution {
  void setZeroes(List<List<int>> matrix) {
    //m == matrix.length : 행의 개수
    //n == matrix[0].length : 열의 개수
    //첫번째 행과 열을 제와한 칸에 0이 있는지 확인(for문)
    //0이 발견 되면 0으로 변경
    //첫번째 행에 0이 있는지 확인(if문)
    //첫번째 열에 0이 있는지 확인(if문)
    //나머지 행렬들에서 0이 있는지 확인
    //결과 값 표시

  int m = matrix.length;
  int n = matrix[0].length;
  
  bool firstRowHasZero = matrix[0].contains(0);
  bool firstColHasZero = matrix.any((row) => row[0] == 0);
  
  // 첫 번째 행과 열을 제외한 나머지 원소 탐색
  for (int i = 1; i < m; i++) {
    for (int j = 1; j < n; j++) {
      if (matrix[i][j] == 0) {
        matrix[i][0] = 0;
        matrix[0][j] = 0;
      }
    }
  }
  
  // 첫 번째 행과 열을 제외하고 행과 열 설정
  for (int i = 1; i < m; i++) {
    if (matrix[i][0] == 0) {
      for (int j = 1; j < n; j++) {
        matrix[i][j] = 0;
      }
    }
  }
  
  for (int j = 1; j < n; j++) {
    if (matrix[0][j] == 0) {
      for (int i = 1; i < m; i++) {
        matrix[i][j] = 0;
      }
    }
  }
  
  // 첫 번째 행과 열 설정
        if (firstRowHasZero) {
            for (int j = 0; j < n; j++) {
            matrix[0][j] = 0;
            }
        }
        
        if (firstColHasZero) {
            for (int i = 0; i < m; i++) {
            matrix[i][0] = 0;
            }
        }
    }
  }
