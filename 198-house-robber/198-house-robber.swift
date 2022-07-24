class Solution {
    func rob(_ nums: [Int]) -> Int {
        var currMax = 0
        var prevMax = 0
        
        for num in nums {
            let temp = currMax
            currMax = max(prevMax + num, currMax)
            prevMax = temp
        }
        
        return currMax
    }
}