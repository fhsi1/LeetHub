class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var sdic = [Character:String.Index](), tdic = sdic
        for i in s.indices {
            guard sdic[s[i]] == tdic[t[i]] else { return false }
            sdic[s[i]] = i
            tdic[t[i]] = i
        }
        return true
    }
}