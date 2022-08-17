class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var nums = nums
        for index in 1..<nums.count {
            if nums[index - 1] > 0 {
                nums[index] += nums[index - 1]
            }
        }
        return nums.max() ?? 0
    }
}