class Solution {
    func fib(_ n: Int) -> Int {
        var dp = Array(repeating: 1, count: n)
        if n <= 1 { return n }
        
        for i in 2..<n {
            dp[i] = dp[i - 1]  + dp[i - 2]
        }
        return dp[n - 1]
    }
}