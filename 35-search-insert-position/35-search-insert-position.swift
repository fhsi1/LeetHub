class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start: Int = 0
        var end: Int = nums.count - 1
        var mid: Int = (start + end) / 2
        
        while (end - start >= 0) {
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                end = mid - 1
            } else {
                start = mid + 1
            }
            mid = (start + end) / 2
        }
        return start
    }
}