class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var res: [Int] = []
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
            res.append(sum)
        }
        
        return res
    }
}