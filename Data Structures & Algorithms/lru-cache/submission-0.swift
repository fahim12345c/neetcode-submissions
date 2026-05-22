class Node {
    var key: Int
    var value: Int
    var prev: Node?
    var next: Node?

    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
}
class LRUCache {
    private var capacity: Int
    private var cache: [Int: Node] = [:]

    private var head: Node = Node(0, 0)
    private var tail: Node = Node(0, 0)

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head
    }
    private func remove(_ node: Node) {
        let prev = node.prev
        let next = node.next

        prev?.next = next
        next?.prev = prev
    }
    private func insertFront(_ node: Node) {
        let first = head.next

        node.next = first
        node.prev = head

        head.next = node
        first?.prev = node
    }

    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            remove(node)
            insertFront(node)
            return node.value
        }
        return -1

    }

    func put(_ key: Int, _ value: Int) {
         if let node = cache[key] {
            node.value = value
            remove(node)
            insertFront(node)
            return
        }

        let newNode = Node(key, value)
        cache[key] = newNode
        insertFront(newNode)

        if cache.count > capacity {
            if let lru = tail.prev {
                remove(lru)
                cache[lru.key] = nil
            }
        }
    }
}
