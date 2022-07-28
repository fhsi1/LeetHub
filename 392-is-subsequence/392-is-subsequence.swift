class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var ars = Array(s)
        for c in t where c == ars.first { ars.removeFirst() }
        return ars.isEmpty
    }
}