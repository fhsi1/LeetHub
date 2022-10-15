class Solution {
    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
        var min = nums[0], max = nums[0]
        for a in nums { 
            if min > a { min = a }
            if max < a { max = a }
        }
        return max - min > 2 * k ? max - min - 2 * k : 0
    }
}