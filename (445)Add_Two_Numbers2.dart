/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    while (current != null) {
      ListNode? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    return prev;
  }

  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    // 1. 리스트 뒤집기
    l1 = reverseList(l1);
    l2 = reverseList(l2);

    // 2. 덧셈 계산을 위한 초기화
    ListNode? dummy = ListNode(0);
    ListNode? current = dummy;
    int carry = 0;

    // 3. 덧셈 계산 및 결과 리스트 구성
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
      current!.next = ListNode(sum % 10);
      current = current.next;
    }

    // 4. 결과 리스트 뒤집어서 반환
    return reverseList(dummy.next);
  }
}
