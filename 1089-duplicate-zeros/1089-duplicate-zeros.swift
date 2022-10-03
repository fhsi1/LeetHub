class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var index = 0
        while (index < arr.count) {
            if arr[index] == 0 {
                index += 1
                arr.insert(0, at: index)
                arr.removeLast()
            }
            index += 1
        }
    }
}