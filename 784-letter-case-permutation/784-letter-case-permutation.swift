class Solution {
    func letterCasePermutation(_ s: String) -> [String] {
        s.reduce([]) { pR, c in
            guard !pR.isEmpty else {
                return c.isNumber ? [c.lowercased()] : [c.lowercased(), c.uppercased()]
            }
            return c.isNumber
            ? (pR.map{ "\($0)\(c.lowercased())" })
            : (pR.map{ "\($0)\(c.lowercased())" } + pR.map{ "\($0)\(c.uppercased())" })
        }
    }
}