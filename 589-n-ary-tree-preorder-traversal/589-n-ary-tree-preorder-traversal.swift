/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func preorder(_ root: Node?) -> [Int] {
    	guard let root = root else { return [] }
        var res = [Int]()
        dfs(root, &res)
        return res
        
    }
    
    func dfs(_ root: Node, _ res: inout[Int]) {
        res.append(root.val)
        
        for r in root.children {
            dfs(r, &res)
        }
    }
}