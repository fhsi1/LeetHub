class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bull = 0
        var cow = 0
        
        let s = Array(secret)
        let g = Array(guess)
        var num = [Character : Int]()
        
        for i in 0 ..< s.count {
            if s[i] == g[i] {
                bull += 1
            } else {
                if num[s[i], default:0] < 0 {
                    cow += 1
                }
                if num[g[i], default:0] > 0 {
                    cow += 1
                }
                num[s[i], default:0] += 1
                num[g[i], default:0] -= 1
            }
        }
        return "\(bull)A\(cow)B"
    }
}