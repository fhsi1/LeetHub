class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        var maxNum = nums.max()!
        var minNum = nums.min()! 
        while maxNum % minNum != 0 {
            let result = maxNum % minNum
            maxNum = minNum
            minNum = result
        }
        return minNum
    }
}