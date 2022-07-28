class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if t.count < s.count { return false }
        if s == "" || s.isEmpty { return true }
        if s == t { return true }

        var index = 0
        var sArray = Array(s)
        
        for tEL in t
        {
          if sArray[index] == tEL
          {
              index += 1
              if index == sArray.count
              {
                  return true
              }
          }  
        }
        return false
    }
}