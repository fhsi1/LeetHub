class Solution {
    func decodeString(_ s: String) -> String {
	    var kStack = [Int]()
	    var stringStack = [String]()
	    var curK = 0
	    var curString = ""

	    for char in s {
		    if char == "[" {
			    kStack.append(curK)
			    stringStack.append(curString)
			    curK = 0
			    curString = ""
		    } else if char == "]" {
			    let prevString = stringStack.isEmpty ? "" : stringStack.popLast()!
			    let k = kStack.popLast()!

    			curString = prevString + String(repeating: curString, count: k)
	    	} else if let digit = Int(String(char)) {
		    	curK = curK * 10 + digit
		    } else { // normal character
			    curString += String(char)
		    }
	    }

	    return curString
    }
}