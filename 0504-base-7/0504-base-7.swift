class Solution {
    func convertToBase7(_ num: Int) -> String {
        var n = abs(num)
        var i = 1
        var result = 0

        while n > 0 {
            result += (n % 7) * i
            i *= 10
            n /= 7
        }
        return num.signum() == -1 ? "-\(result)" : "\(result)"
    }
}