class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        
        var nums = nums2
        for num in nums1 {
            if nums.contains(num) {
                result.append(num)
                nums.remove(at: nums.firstIndex(of: num)!)
            }
        }
        
        return result
    }
}