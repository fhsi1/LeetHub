class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        guard !triangle.isEmpty else { return 0 }
        var arr = triangle.last!
        for i in stride(from: triangle.count - 2, through: 0, by: -1) {
            for j in 0...i {
                arr[j] = min(arr[j], arr[j + 1]) + triangle[i][j]
            }
        }
        return arr[0]
    }
}