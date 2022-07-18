class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let characters1 = Array(s1)
        let characters2 = Array(s2)
        let asciiAlphStart = Character("a").asciiValue!
        var common = Array(repeating: 0, count: 26)
        
        guard s2.count >= s1.count else { return false }
        for i in 0..<characters1.count {
            common[Int(characters1[i].asciiValue! - asciiAlphStart)] += 1
            common[Int(characters2[i].asciiValue! - asciiAlphStart)] -= 1
        }
        guard !isAllZero(common) else { return true }
        for i in characters1.count..<characters2.count {
            common[Int(characters2[i].asciiValue! - asciiAlphStart)] -= 1
            common[Int(characters2[i - characters1.count].asciiValue! - asciiAlphStart)] += 1
            guard !isAllZero(common) else { return true }
        }
        return false
    }
    
    private func isAllZero(_ arr: [Int]) -> Bool {
        for i in 0..<arr.count {
            if arr[i] != 0 { return false }
        }
        return true
    }
}