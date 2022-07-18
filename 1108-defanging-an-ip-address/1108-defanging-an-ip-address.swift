class Solution {
    func defangIPaddr(_ address: String) -> String {
        var res = ""
        for i in address {
            if i != "." {
                res.append(i)
            } else { res.append("[.]") }
        }
        return res
    }
}