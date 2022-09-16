class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var res: Int = 0
        
        for op in operations {
            if op.contains("--") {
                res -= 1
            } else { res += 1 }
        }
        
        return res
    }
}