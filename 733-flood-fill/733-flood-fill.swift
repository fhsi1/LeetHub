class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        dfs(&image, sr, sc,
            image[sr][sc], color, image.count, image[0].count)
        return image
    }

    private func dfs(_ image: inout [[Int]], _ sr: Int, _ sc: Int,
                     _ oldColor: Int, _ newColor: Int, _ m: Int, _ n: Int) {
        // 인덱스가 범위 내에 있는지 확인
        // 이동한 곳의 색은 시작지점과 동일할 때만 변경되어야 하고
        // 새로운 색상으로 변경하지 않은 노드만 변경
        guard sr >= 0 && sr < m && sc >= 0 && sc < n else { return }
        guard image[sr][sc] == oldColor && image[sr][sc] != newColor else { return }

        image[sr][sc] = newColor
        
        // 상하좌우를 이동해가면서 newColor 로 변경
        dfs(&image, sr, sc+1, oldColor, newColor, m, n) // 오른쪽
        dfs(&image, sr-1, sc, oldColor, newColor, m, n) // 위
        dfs(&image, sr, sc-1, oldColor, newColor, m, n) // 왼쪽
        dfs(&image, sr+1, sc, oldColor, newColor, m, n) // 아래
    }
}