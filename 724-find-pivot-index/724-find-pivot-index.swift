class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var leftSum = 0
        for i in 0..<nums.count {
            let r = sum - leftSum - nums[i]
            if leftSum == r {
                return i
            }
            leftSum += nums[i]
        }
        return -1
    }
}