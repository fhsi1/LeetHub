class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        var num: Int = 1
        
        while num < n {
            num *= 4
        }
        
        return num == n
    }
}