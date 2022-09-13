class Solution {
    func addDigits(_ num: Int) -> Int {
        var num = num
        
        while num > 9 {
            let balance = num % 10
            num = (num - balance) / 10 + balance
        }
        
        return num
    }
}