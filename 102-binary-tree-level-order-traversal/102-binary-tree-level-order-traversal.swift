/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        
        var res: [[Int]] = []
        var queue: [TreeNode] = []
        queue.append(root)
        
        while !queue.isEmpty {
            var depth: [Int] = []
            for node in queue {
                queue.removeFirst()
                if let left = node.left{ queue.append(left) }
                if let right = node.right{ queue.append(right) }
                
                depth.append(node.val)
            }
            res.append(depth)
        }
        return res
    }
}