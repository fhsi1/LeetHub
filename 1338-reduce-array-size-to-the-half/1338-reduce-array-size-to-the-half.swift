class Solution {
    func minSetSize(_ arr: [Int]) -> Int {
        var dict = [Int: Int]()
        
        for val in arr {
            dict[val] = (dict[val] ?? 0) + 1
        }
        
        let sortedDict = dict.sorted { $0.value > $1.value}
        var count = 0
        var sum = 0
        for (_ , v) in sortedDict {
            
            if (arr.count / 2) > sum {
                count += 1
            } else {
                return count
            }
            sum += v
        }
        return count
    }
}