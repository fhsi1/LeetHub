class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        if s.count != t.count { return false }
    
        var cDict = [Character: Int]()
        var tDict = [Character: Int]()
    
        for c in s {
            cDict[c] = (cDict[c] ?? 0) + 1
        }
    
        for c in t {
            tDict[c] = (tDict[c] ?? 0) + 1
        }    
        return cDict == tDict
    }
}