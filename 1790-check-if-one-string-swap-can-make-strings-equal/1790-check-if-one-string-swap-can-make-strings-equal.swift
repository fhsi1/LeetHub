class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        var arrS1 = Array(s1)
        var arrS2 = Array(s2)
        var a: [Character] = []
        var b: [Character] = []
        
        for i in 0..<s1.count {
            if arrS1[i] != arrS2[i] {
                a.append(arrS1[i])
                b.append(arrS2[i])
            }
        }
        
        let aCnt = a.count
        let bCnt = b.count
        
        if aCnt == 0 && bCnt == 0 {
            return true
        }
        
        if aCnt == 2 && bCnt == 2 {
            if a[0] == b[1] && a[1] == b[0] {
                return true
            }
        }
        
        return false
    }
}