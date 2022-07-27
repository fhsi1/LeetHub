class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: nums.count)
        res[0] = nums[0]
        
        for i in 1..<nums.count {
            res[i] = res[i - 1] + nums[i]
        }
        
        return res
    }
}