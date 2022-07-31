class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        
        var buyIndex = prices[0]
        var profit = 0
        
        for price in prices {
            if price < buyIndex {
                buyIndex = price
            } else if (price - buyIndex) > profit {
                profit = price - buyIndex
            }
        }
        
        return profit
    }
}