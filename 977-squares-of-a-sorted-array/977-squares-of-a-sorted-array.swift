class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for i in 0..<nums.count {
            result.append(nums[i] * nums[i])
        }
        
        result.sort()
        
        return result
    }
}