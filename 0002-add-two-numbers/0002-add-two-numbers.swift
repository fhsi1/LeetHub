/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let head = ListNode()           // Dummy node to start the result list
        var temp = head                 // Pointer to build the result list
        var carry = 0                   // Carry variable

        var l1 = l1                      // Temporary references to traverse l1 and l2
        var l2 = l2

        while l1 != nil || l2 != nil || carry != 0 {
            let v1 = l1?.val ?? 0        // Get value from l1 or 0 if nil
            let v2 = l2?.val ?? 0        // Get value from l2 or 0 if nil
            let sum = v1 + v2 + carry    // Sum of values and carry

            temp.next = ListNode(sum % 10) // Create new node with units digit
            temp = temp.next!             // Move temp pointer to the new node

            carry = sum / 10              // Update carry for next addition

            l1 = l1?.next                 // Move to next node in l1 if not nil
            l2 = l2?.next                 // Move to next node in l2 if not nil
        }

        return head.next
    }
}