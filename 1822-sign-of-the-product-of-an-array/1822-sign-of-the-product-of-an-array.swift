class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        if nums.contains(0) {
            return 0
        }
        
        var sign = 1
        for n in nums {
            if n < 0 {
                sign *= -1
            }
        }
        
        return sign
    }
}