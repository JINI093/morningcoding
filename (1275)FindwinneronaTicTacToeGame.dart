class Solution {
  String tictactoe(List<List<int>> moves) {
    //게임보드 생성
    List<List<String>> board = List.generate(3,(_) => List.filled(3, ''));
    //A,B가 번갈아 가면서 보드에 표시
    for (int i = 0; i < moves.length; i++) {
        int row = moves[i][0];
        int col = moves[i][1];
        board[row][col] = (i % 2 ==0) ? 'A' : 'B';
    }
    
    //가로 확인
    String checkWinner(List<List<String>> board) {
        for (int i = 0; i < 3; i++) {
          if (board[i][0] != ''&&
              board[i][0] == board[i][1] &&
              board[i][0] == board[i][2]) {
                return board[i][0];
              }
        }
    //세로 확인
        for (int i = 0; i < 3; i++) {
          if (board[0][i] != ''&&
              board[0][i] == board[1][i] &&
              board[0][i] == board[2][i]) {
                return board[0][i];
              }
        }
    //가로 대각선 확인
        if (board[0][0] != '' &&
           board[0][0] == board[1][1] &&
           board[1][1] == board[2][2]) {
            return board[0][0];
             }
    //세로 대각선 확인
        if (board[0][2] != '' &&
            board[0][2] == board[1][1] &&
            board[1][1] == board[2][0]) {
              return board[0][2];
            }
    //승자가 없는 경우    
        return '';
    }
    //승자확인
    String winner = checkWinner(board);
    if (winner != ''){
      return winner;
    }

    if (moves.length == 9) {
      return 'Draw';
    }

return 'Pending';
  }
}