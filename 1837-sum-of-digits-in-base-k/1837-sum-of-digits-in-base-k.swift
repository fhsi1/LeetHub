class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var n = n, result = 0
        while n > 0 {
            result += n % k
            n /= k
        }
        return result
    }
}