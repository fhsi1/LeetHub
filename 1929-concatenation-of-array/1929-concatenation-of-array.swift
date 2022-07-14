class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var res = nums
        
        for i in 0..<nums.count {
            res.append(nums[i])
        }
        
        return res
    }
}