class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]]()
        func dfs(_ path:[Int], _ i: Int) {
            if path.endIndex == k {
                res.append(path)
                return
            }
            if i > n {return}
            dfs(path + [i],i + 1)
            dfs(path, i + 1)
        }
        dfs([], 1)
        return res
    }
}