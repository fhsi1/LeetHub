class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var ansewer: Int = 0
        var i = n
    
        while i > 1 {
            ansewer += (i / 2)
            i = (i % 2) + (i / 2)
        }
    
        return ansewer
    }
}