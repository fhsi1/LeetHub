class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var wordTable: [String: Int] = [String: Int]()
        for word in words {
            let value = wordTable[word] ?? 0
            wordTable[word] = value + 1
        }
        let sortedTuple = wordTable.sorted { (val0, val1) -> Bool in
            return val0.value > val1.value || (val0.value == val1.value && val0.key < val1.key)
        }
        let keys = sortedTuple.map { $0.key }
        return Array(keys.prefix(k))
    }
}