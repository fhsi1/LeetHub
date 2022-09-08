class Solution {
    func toLowerCase(_ s: String) -> String {
        var res = ""
        for c in s {
            if c.isUppercase {
                res += c.lowercased()
            } else { res += String(c) }
        }
        return res
    }
}