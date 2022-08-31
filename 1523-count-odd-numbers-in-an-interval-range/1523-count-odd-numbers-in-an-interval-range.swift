class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        return (low % 2 == 1) ? (1 + (high - low) / 2) : ((high - low) / 2 + (high - low) % 2)
    }
}