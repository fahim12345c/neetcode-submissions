class MinStack {
    var stack:[Int] = []
    var minStack:[Int] = []
    var mn:Int = 9000000000
    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        mn=min(mn,val)
        minStack.append(mn)
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
        mn = minStack.last ?? 9000000000
    }

    func top() -> Int {
        return stack.last ?? 0
    }

    func getMin() -> Int {
        return minStack.last ?? 0
    }
}
