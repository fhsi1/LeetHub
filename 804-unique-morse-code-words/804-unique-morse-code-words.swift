class Solution {
    let morseCode = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var resultSet = Set<String>()
        words.forEach { word in
            var morseWord = ""
            for c in word {
                if let index = c.asciiValue {
                    morseWord.append(morseCode[Int(index) - 97])    
                }
            }
            resultSet.insert(morseWord)
        }
        return resultSet.count
    }
}