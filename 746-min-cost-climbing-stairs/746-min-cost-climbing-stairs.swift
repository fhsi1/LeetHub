class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var n = cost.count
        var cost = cost
        for i in 2..<n {
            cost[i] = min(cost[i - 1], cost[i - 2]) + cost[i]
        }
        return min(cost[n - 1], cost[n - 2])
    }
}