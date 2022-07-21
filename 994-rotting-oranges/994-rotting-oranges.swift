class Solution {
    struct Fruit {
        var row: Int
        var col: Int
    }
    
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        var rotting: [Fruit] = []
        var oranges: Int = 0
        
        for row in 0..<grid.count {
            for col in 0..<grid[row].count {
                 if grid[row][col] == 1 {                     
                     oranges += 1
                 }
                if grid[row][col] == 2 {                     
                     rotting.append(Fruit(row: row, col: col))
                 }
            }
        }
        
        var time = 0
        while rotting.count > 0 {
            var moreRot = false
            for t in 0..<rotting.count {
                var rot = rotting.remove(at: 0)  
                if rot.col > 0 {
                    if grid[rot.row][rot.col-1] == 1 {
                        oranges -= 1
                        grid[rot.row][rot.col-1] = 2
                        moreRot = true
                        rotting.append(Fruit(row: rot.row, col: rot.col - 1))
                    }
                }
                if rot.col < grid[rot.row].count - 1 {
                    if grid[rot.row][rot.col + 1] == 1 {
                        oranges -= 1
                        grid[rot.row][rot.col + 1] = 2
                        moreRot = true
                        rotting.append(Fruit(row: rot.row, col: rot.col+1))
                    }                    
                }
                if rot.row > 0 {
                    if grid[rot.row-1][rot.col] == 1 {
                        oranges -= 1
                        grid[rot.row-1][rot.col] = 2
                        moreRot = true
                        rotting.append(Fruit(row: rot.row - 1, col: rot.col))
                    }
                }
                if rot.row < grid.count-1 {
                    if grid[rot.row + 1][rot.col] == 1 {
                        oranges -= 1
                        grid[rot.row+1][rot.col] = 2
                        moreRot = true
                        rotting.append(Fruit(row: rot.row + 1, col: rot.col))
                    }
                }
            }            
            if moreRot {
                time += 1
            }
        }
        
        
        return oranges == 0 ? time : -1
        
    }
}