
class MyQueue {
    
    var stack: [Int] = [Int]()

    init() {
        
    }
    
    func push(_ x: Int) {
        stack.append(x)
    }
    
    func pop() -> Int {
        return stack.removeFirst()
    }
    
    func peek() -> Int {
        return stack.first!
    }
    
    func empty() -> Bool {
        return stack.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */