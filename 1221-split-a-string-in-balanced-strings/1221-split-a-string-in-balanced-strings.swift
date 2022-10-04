class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var res = 0
        var sum = 0
        for char in s {
            if char == "L" {
                sum += 1
            } else {
                sum -= 1
            }
            
            if sum == 0 {
                res += 1 
            }
        }
        return res
    }
}