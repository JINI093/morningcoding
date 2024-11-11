class Solution {
  bool judgeCircle(String moves) {
    int x = 0;
    int y = 0;

    for (int i = 0; i < moves.length; i++) {
        switch (moves[i]) {
            case 'U': //위로 이동
                y++;
                break;
            case 'D': //아래로 이동
                y--;
                break;
            case 'L': //왼쪽으로 이동
                x--;
                break;
            case 'R': //오른쪽으로 이동
                x++;
                break;
        }
    }

    return x == 0 && y == 0;
  }
}