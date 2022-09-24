class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var m = 0
        for i in sentences {
            var spaces = 0
            for c in i {
                spaces += c == Character(" ") ? 1 : 0
            }
            m = max(m, spaces + 1)
        }
        return m
    }
}