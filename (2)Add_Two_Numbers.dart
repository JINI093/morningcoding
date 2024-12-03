import '(21)Merge_Two_Sorted_Lists.dart';

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    //ListNode 초기화
    //두 리스트의 각 노드를 순회
    //두 리스트의 값을 더하고, 10이 넘으면 올림
    //각 자리수의 합을 새로운 노드로 추가
    //더미 노드의 다음 노드를 반환하여 최종 결과

    ListNode dummy = ListNode(0);
    ListNode current = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry > 0) {
      int sum = carry;
      if (l1 != null) {
        sum += l1.val;
        l1 = l1.next;
      }

      if (l2 != null) {
        sum += l2.val;
        l2 = l2.next;
      }

      carry = sum ~/ 10;
      current.next = ListNode(sum % 10);
      current = current.next!;
    }

    return dummy.next;
  }
}
