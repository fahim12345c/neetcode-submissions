class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {

        var slow = head
        var fast = head

        while let f = fast, let next = f.next {

            slow = slow?.next
            fast = next.next

            if fast === slow {
                return true
            }
        }

        return false
    }
}