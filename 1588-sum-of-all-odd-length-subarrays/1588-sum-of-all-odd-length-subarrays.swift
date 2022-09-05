class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var result = 0, length = 1
	    while length <= arr.count {
		    for i in 0..<arr.count {
			    guard i + length <= arr.count else { break }
			    result += arr[i..<(i + length)].reduce(0, +)
		    }
		    length += 2
	    }
	    return result
    }
}