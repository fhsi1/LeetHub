class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let sorted = heights.sorted(by: <)
        let heightsCount = heights.count
        var count = 0
        
        for i in 0..<heightsCount {
            if sorted[i] != heights[i] {
                count += 1
            }
        }
        
        return count
    }
}