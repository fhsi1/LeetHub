class Solution {
    func sortSentence(_ s: String) -> String {
        var str = s.components(separatedBy: " ")
        for value in str {
            for i in 1...9 {
                if value.contains(String(i)) {
                    str[i-1] = value
                }
        }   
        }
    
        let res = str.joined(separator: " ").filter { !"123456789".contains($0) }
    
        return res
    }
}