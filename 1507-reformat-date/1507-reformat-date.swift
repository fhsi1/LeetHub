class Solution {
    func reformatDate(_ date: String) -> String {
        let arr = date.split(separator: " ")
        var day = String(arr[0])
        var month = String(arr[1])
        var year = String(arr[2])
        var monthDict = ["Jan": "01", "Feb": "02", "Mar": "03", "Apr": "04", "May": "05", "Jun": "06", "Jul": "07", "Aug": "08", "Sep": "09", "Oct": "10", "Nov": "11", "Dec": "12"]
        day.removeLast()
        day.removeLast()
        if day.count == 1 {
            day.insert("0", at: day.startIndex)
        }
        
        let actualMonth = monthDict[month]
        return year + "-" + actualMonth! + "-" + day
    }
}