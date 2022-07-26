class Solution {
    func reverseBits(_ n: Int) -> Int {
        var bits = 0
        var n = n
        
        for i in 0..<32 {
            bits |= (n & 1)
            
            if i != 31 {
                n = n >> 1
                bits = bits << 1
            }
        }
        
        return bits
    }
}