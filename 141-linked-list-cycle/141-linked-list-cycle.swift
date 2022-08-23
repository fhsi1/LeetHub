/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head, let next = head.next else {
            return false
        }
        var slow: ListNode? = head //start:head; speed: 1
        var fast: ListNode? = next //start:next; speed: 2
        while slow !== fast {
            if slow == nil || fast == nil {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
}