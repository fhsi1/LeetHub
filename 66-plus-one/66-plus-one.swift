class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var a = digits
        
        a[digits.count - 1] += 1
        
        for i in a.indices.reversed() {
            if a[i] > 9 {
                a[i] = a[i] % 10
                
                if i == 0 {
                    a.insert(1, at: 0)
                } else {
                    a[i - 1] += 1
                }
            }
        }
        return a
    }
}