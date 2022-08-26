class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
	
        var answer = 0
        var numsArray = nums

        while let numsMin = numsArray.filter({ $0 > 0 }).min() {
            numsArray = numsArray.map { $0 - numsMin }
            answer += 1
        }
        return answer
    }
}