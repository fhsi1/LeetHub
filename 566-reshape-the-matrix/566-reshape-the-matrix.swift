class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let nr = nums.count
        let nc = nums[0].count
        let x = nr * nc
        if r * c != x {
            return nums
        }
        var result: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        var i: Int = 0
        while i < x {
            result[i / c][i % c] = nums[i / nc][i % nc]
            i += 1
        }
        return result
    }
}