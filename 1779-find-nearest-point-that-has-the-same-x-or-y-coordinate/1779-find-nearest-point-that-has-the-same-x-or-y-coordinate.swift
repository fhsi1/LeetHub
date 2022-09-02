class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var minDistance = Int.max, result = -1
        for i in 0..<points.count {
            if points[i][0] == x || points[i][1] == y {
                let distance = abs(x - points[i][0]) + abs(y - points[i][1])
                if distance < minDistance { 
                    minDistance = distance
                    result = i  
                }
            }
        }
        return result
    }
}