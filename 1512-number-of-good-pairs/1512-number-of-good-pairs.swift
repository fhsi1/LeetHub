class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var cnt = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count where i < j{
                if (nums[i] == nums[j]) {
                    cnt += 1
                }
            }
        }
        return cnt
    }
}