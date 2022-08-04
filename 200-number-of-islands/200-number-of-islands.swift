class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var board = grid
        var res = 0
        for (i, row) in board.enumerated() {
            for (j, _) in row.enumerated() {
                if board[i][j] == Character("1") {
                    dfs(&board, i, j)
                    res += 1
                }
            }
        }
        return res
    }
    
    private func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) {
        if (i >= grid.count || i < 0) || (j >= grid[0].count || j < 0) { return }
        
        // "0", 물이므로 return
        if grid[i][j] == Character("0") { return }
        
        // 두 번 탐색하지 않도록 값 변경
        grid[i][j] = Character("0")
        
        dfs(&grid, i-1, j) // 상
        dfs(&grid, i+1, j) // 하
        dfs(&grid, i, j-1) // 좌
        dfs(&grid, i, j+1) // 우
    }
}