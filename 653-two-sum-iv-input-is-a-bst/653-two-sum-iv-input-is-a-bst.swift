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
    var set: Set<Int> = Set()
    
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let _root = root else { return false }
        let val = k - root!.val
        if set.contains(val) { return true }
        else { set.insert(root!.val) }
        return findTarget(root?.left, k) || findTarget(root?.right, k)
    }
}