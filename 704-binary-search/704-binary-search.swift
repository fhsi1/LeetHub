class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 1 {
            return nums.first! == target ? 0 : -1
        }
        
        var low = 0
        var high = nums.count - 1
        
        while (low <= high) {
            let mid = low + (high - low) / 2
            if target == nums[mid] {
                return mid
            } else if nums[low] <= nums[mid] {
                if target >= nums[low] && target < nums[mid] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            } else {
                if target > nums[mid] && target <= nums[high] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
        }
        return -1
    }
}