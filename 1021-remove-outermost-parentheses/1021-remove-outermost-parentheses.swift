class Solution {
    func removeOuterParentheses(_ s: String) -> String {
        var arr: [Character] = []
        var count = 0
        for c in s {
            if c == "(" {
                count += 1
                if count != 1 {
                    arr.append(c)
                }
            } else {
                count -= 1
                if count != 0 {
                    arr.append(c)
                }
            }
        }
        
        return String(arr)
    }
}