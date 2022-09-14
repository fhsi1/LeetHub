class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let numCount = nums.count
        var expectedSum = (numCount * (numCount + 1)) / 2
        var givenSum = nums.reduce(0, +)
        return expectedSum - givenSum
    }
}