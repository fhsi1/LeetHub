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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isBST(root, Int.min, Int.max)
    }
    
    private func isBST(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool {
        if node == nil { return true }
        if node!.val <= min || node!.val >= max { return false }
        return isBST(node?.left, min, node!.val) && isBST(node?.right, node!.val, max)
    }
}