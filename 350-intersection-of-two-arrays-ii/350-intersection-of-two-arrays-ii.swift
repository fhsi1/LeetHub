class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        
        var nums2 = nums2
        for num in nums1 {
            if nums2.contains(num) {
                result.append(num)
                nums2.remove(at: nums2.firstIndex(of: num)!)
            }
        }
        
        return result
    }
}