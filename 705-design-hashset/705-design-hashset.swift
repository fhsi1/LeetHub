
class MyHashSet {

    var myHashSet: [Int: Int]

    init() {
        myHashSet = [Int : Int]()
    }

    func add(_ key: Int) {
        myHashSet[key] = key
    }

    func remove(_ key: Int) {
        myHashSet.removeValue(forKey: key)
    }

    func contains(_ key: Int) -> Bool {
        return myHashSet[key] != nil
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */