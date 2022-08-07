class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        
        var dictP = [Character: Int]()
        var dictS = [Character: Int]()
        var result: [Int] = []
        let s = Array(s)
        let pCount = p.count
        
        for char in p {
            dictP[char, default: 0] += 1
        }
        
        for i in 0..<s.count { 
            
            if i >= pCount {
                let char = s[i - pCount]
                dictS[char] = dictS[char]! > 1 ? dictS[char]! - 1 : nil
            }

            dictS[s[i], default: 0] += 1
            
            if dictS == dictP {
                result.append(i - pCount + 1)
            } 
        }
        
        return result
    }
}