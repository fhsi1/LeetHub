class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var res: [Int] = [Int]()
        
        if m > 0 {
            for i in 0..<m {
            res.append(nums1[i])
            }
        }
        
        if n > 0 {
            for i in 0..<n {
            res.append(nums2[i])
            }
        }
        
        nums1 = res.sorted(by: <)
    }
}