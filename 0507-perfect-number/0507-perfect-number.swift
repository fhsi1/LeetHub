class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num > 4 else {
            return false
        }
        let root = Int(sqrt(Double(num)))
        var sum = 1
        for i in 2...root {
            if num % i == 0 {
                sum += i
                if i != num / i {
                    sum += num / i
                }
            }            
        }
        return sum == num
    }
}