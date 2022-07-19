class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        if image[sr][sc] == newColor
        {
            return image
        }
        
        var currentImage = image
        helper(&currentImage, sr,sc, currentImage[sr][sc], newColor)
        return currentImage
        
    }
    
    func helper(_ currentImage: inout [[Int]], _ sr: Int, _ sc: Int, _ color: Int, _ newColor: Int)
    {
        if (sr < 0 || sr >= currentImage.count || sc < 0 || sc >= currentImage[0].count || currentImage[sr][sc] != color)
        {
            return
        }
        
        currentImage[sr][sc] = newColor
        helper(&currentImage, sr + 1, sc, color, newColor)
        helper(&currentImage, sr - 1, sc, color, newColor)
        helper(&currentImage, sr, sc + 1, color, newColor)
        helper(&currentImage, sr, sc - 1, color, newColor)
    }
}