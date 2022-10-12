class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        let min = min(a, b)
        var cnt: Int = 0
        
	    for i in 1...min where a % i == 0 && b % i == 0 {
		    cnt += 1
	    }
	    return cnt
    }
}