class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let M = grid.count, N = grid[0].count
        var visited = Set<[Int]>(), result=0
        var isValid = { (_ r:Int, _ c: Int) ->Bool in
            return  r >= 0 && c >= 0 && r < M && c < N && grid[r][c] == 1
        }
        
        func dfs(_ r: Int, _ c: Int) -> Int {
            visited.insert([r, c])
            var islands = 1
            for (x, y) in [(1, 0), (0, 1), (-1, 0), (0, -1)] {
                if !visited.contains([r + x, c + y]) && isValid(r + x, c + y)  {
                    islands += dfs(r + x, c + y)
                }
            }
            return islands
        }
        
        for r in 0...M {
            for c in 0...N {
               if !visited.contains([r, c]) && isValid(r, c) {
                   result = max(result, dfs(r, c))
               }
            }
        } 
        
       return result 
    }
}