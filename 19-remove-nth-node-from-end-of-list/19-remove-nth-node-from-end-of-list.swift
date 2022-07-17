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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        guard let head = head else { return nil }

        var node: ListNode? = head
        var nodesCount = 0
        while node != nil {
            nodesCount += 1
            node = node?.next
        }
        
        guard n <= nodesCount else { return nil }
        
        let nodeIndex = nodesCount - n
        guard nodeIndex != 0 else { return head.next }
        
        let prevNodeIndex = nodeIndex - 1
        node = head
        for _ in 0..<prevNodeIndex {
            node = node?.next
        }
        
        node?.next = node?.next?.next
        
        return head
            
    }
}