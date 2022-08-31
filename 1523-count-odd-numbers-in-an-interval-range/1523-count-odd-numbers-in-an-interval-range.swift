class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var cnt = 0
        for i in low...high {
            if i % 2 == 1 {
                cnt += 1
            }
        }
        return cnt
    }
}