class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var s = s.split(separator: " ")
        var c = s.count
        
        if k < c { s.removeLast(c - k) }
        
        return s.joined(separator: " ")
    }
}