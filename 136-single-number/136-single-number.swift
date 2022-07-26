class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var singleNum = 0
        
        var dictionary = [Int: Int]()
        
        for num in nums {
            dictionary[num] = (dictionary[num] ?? 0) + 1
        }
        
        for item in dictionary {
            if item.value == 1 {
                singleNum = item.key
            }
        }
        return singleNum
    }
}