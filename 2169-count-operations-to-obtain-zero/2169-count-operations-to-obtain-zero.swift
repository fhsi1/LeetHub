class Solution {
    func countOperations(_ num1: Int, _ num2: Int) -> Int {
        var num1 = num1, num2 = num2, res = 0 
	    while num1 != 0 && num2 != 0 {
		    if num1 > num2 {
			    num1 -= num2
		    } else {
			    num2 -= num1
		    }
		    res += 1
	    }
	    return res
    }
}