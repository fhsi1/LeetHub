class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var res = s.unicodeScalars.reduce(0) { $0 ^ $1.value }
        res = t.unicodeScalars.reduce(res) { $0 ^ $1.value }
        return Character(UnicodeScalar(res)!)
    }
}