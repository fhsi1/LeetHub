class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var sum = 0, n = n
        while n != 0 {
            sum += 1
            n &= (n - 1)
        }
        return sum
    }
}