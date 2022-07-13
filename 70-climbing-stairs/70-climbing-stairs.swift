class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp: [Int] = [0, 1, 2]
        for i in 3...45 {
            dp.append(dp[i - 2] + dp[i - 1])
        }
        return dp[n]
    }
}