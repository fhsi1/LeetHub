class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        if k < 1 || nums.isEmpty {
            return
        }
        let k = k % nums.count
        nums = Array(nums[nums.count - k..<nums.count] + nums[0..<nums.count - k])
    }
}