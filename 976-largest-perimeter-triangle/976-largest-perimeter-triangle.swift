class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let a = nums.sorted(by: >) 
        let cnt = a.count
        for i in 0..<(cnt - 2) { 
            if a[i + 1] + a[i + 2] - a[i] > 0 { 
                return a[i + 1] + a[i + 2] + a[i]
            }
        }
        return 0 
    }
}