class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let ROWS = mat.count
		let COLS = mat[0].count
		let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
		var res = Array(repeating: Array(repeating: -1, count: COLS), count: ROWS)
		var queue = [(Int, Int)]()

		for r in 0..<ROWS {
			for c in 0..<COLS {
				if mat[r][c] == 0 {
					res[r][c] = 0
					queue.append((r, c))
				}
			}
		}

		while !queue.isEmpty {
			let (row, col) = queue.removeFirst()
			for (i, j) in directions {
				let newRow = row + i
				let newCol = col + j
				if 0 <= newRow && newRow < ROWS && 0 <= newCol && newCol < COLS && res[newRow][newCol] == -1 {
					res[newRow][newCol] = res[row][col] + 1
					queue.append((newRow, newCol))
				}
			}
		} 
		return res
    }
}