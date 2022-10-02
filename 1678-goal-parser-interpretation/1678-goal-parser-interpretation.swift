class Solution {
    func interpret(_ command: String) -> String {
        var str = command
        str = str.replacingOccurrences(of: "()", with: "o")
        str = str.replacingOccurrences(of: "(al)", with: "al")
        return str
    }
}