class Solution {
    func dayOfYear(_ date: String) -> Int {
        func daysInMonth(_ year: Int, _ month: Int) -> Int {
            switch (year, month) {
                case (_, 1), (_, 3), (_, 5), (_, 7), (_, 8), (_, 10), (_, 12): return 31
                case (_, 4), (_, 6), (_, 9), (_, 11): return 30
                case (let x, 2): return x % 4 == 0 ? (x % 100 == 0 ? (x % 400 == 0 ? 29 : 28) : 29) : 28
                default: return 0
            }
        }

        let data: [Int] = date.split(separator: "-").map({ Int(String($0)) ?? 0 })
        var result: Int = data[2]
        for i in 1..<data[1] {
            result += daysInMonth(data[0], i)
        }
        return result
    }
}