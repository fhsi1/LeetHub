class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        guard !columnTitle.isEmpty else {
            return 0
        }
        
        var result = 0
        
        for char in columnTitle.unicodeScalars {
            var num = Int(char.value - 64)
            result = result * 26 + num
        }
        return result
    }
}