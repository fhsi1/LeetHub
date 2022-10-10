class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var s = Array(String(num))
        if let idx = s.firstIndex(of: "6") {
            s[idx] = "9"
        }
        return Int(String(s)) ?? num
    }
}