class Solution {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var next = 0
        while num >= 1 {
            next += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        if next == 1 { return true }
        return next == 4 ? false : isHappy(next)   
    }
}