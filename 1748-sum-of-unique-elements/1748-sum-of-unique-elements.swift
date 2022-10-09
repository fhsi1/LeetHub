class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var dictionary: [Int: Int] = [:]
        for number in nums {
            if dictionary.keys.contains(number) {
                dictionary[number]! += 1
            } else {
                dictionary[number] = 1
            }
        }
        return dictionary.filter { $0.value == 1 }.keys.reduce(0, +)
    }
}