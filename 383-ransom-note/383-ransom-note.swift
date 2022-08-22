class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazine = magazine
        
        for r in ransomNote {
            if let idx = magazine.firstIndex(of: r) {
                magazine.remove(at: idx)
            } else {
                return false
            }
        }
        return true
    }
}