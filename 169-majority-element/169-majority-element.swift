class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return -1
        }
    
        var storage: [Int: Int] = [:]
        var majorElement = nums[0]
    
        nums.forEach { num in
            let newCount = storage[num, default: 0] + 1
            storage[num] = newCount
        
            if newCount > nums.count / 2 {
                majorElement = num
            }
        }
        
        return majorElement
    }
}