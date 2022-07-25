class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var temp = 1
        while (temp < n)
        {
            temp *= 2
        }
        return temp == n
    }
}