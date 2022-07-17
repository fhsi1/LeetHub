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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = countNode(head)
        if count <= 1 {
            return head
        }
        count /= 2
        
        var node = head
        for _ in 0..<count{
            node = node?.next
        }
        return node
    }
    
    private func countNode(_ node: ListNode?) -> Int{
        if node == nil {
            return 0
        }
        var count = 0
        var node = node
        
        while node != nil {
            count += 1
            node = node?.next
        }
        
        return count
    }
}