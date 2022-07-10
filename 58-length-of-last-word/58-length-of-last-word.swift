class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var a = Array(s.split(separator: " ").map{ String($0) })
        return (a.last!.count)
    }
}