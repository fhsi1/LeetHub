class Solution {
    func reverseWords(_ s: String) -> String {
        var output = ""

        let words = s.split(separator: " ")

        for (index, word) in words.enumerated() {
            var reversedWord = String(word.reversed())
            if index != words.count-1 {
                reversedWord += " "
            }
            output.append(reversedWord)
        }
        return output
    }
}