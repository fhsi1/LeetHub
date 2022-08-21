class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var res: Bool = false
        for i in 0..<matrix.count  {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == target {
                    res = true
                }
            }
        }
        return res
    }
}