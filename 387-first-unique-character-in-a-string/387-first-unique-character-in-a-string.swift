class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var table: [Character: Int] = [:]
        
        for c in s {
            table[c, default: 0] += 1
        }
        
        var i = 0
        
        for c in s {
            if let cnt = table[c], cnt == 1 {
                return i
            }
            i += 1
        }
        return -1
    }
}