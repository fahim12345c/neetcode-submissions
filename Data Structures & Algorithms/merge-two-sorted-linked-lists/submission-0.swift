class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

        // Mutable copies
        var l1 = list1
        var l2 = list2

        // Dummy head
        let dummy = ListNode(0)
        var current = dummy

        // Merge while both lists exist
        while let node1 = l1, let node2 = l2 {
            if node1.val < node2.val {
                current.next = node1
                l1 = node1.next
            } else {
                current.next = node2
                l2 = node2.next
            }
            current = current.next!
        }

        // Attach remaining nodes
        current.next = l1 ?? l2

        return dummy.next
    }
}