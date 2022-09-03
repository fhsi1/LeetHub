class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        let sortArr = arr.sorted(by: >)
        var diff = sortArr[0] - sortArr[1]
        var check: Bool = false
        
        for i in 1..<sortArr.count {
            if sortArr[i] == sortArr[i - 1] - diff {
                check = true
            } else { 
                check = false
                break
            }
        }
        return check
    }
}