class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var array = Array(s)
        var dict: [Character: Int] = [:]
        var result = 0

        var l = 0

        for r in 0..<array.count {
            dict[array[r], default: 0] += 1

            while (r - l + 1) - dict.values.max()! > k {
                dict[array[l], default: 0] -= 1
                l+=1
            }

            result = max(result, r - l + 1)
        }
        
        return result
    }
}