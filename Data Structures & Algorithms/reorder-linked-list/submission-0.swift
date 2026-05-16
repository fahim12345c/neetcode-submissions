class Solution {
    func reorderList(_ head: ListNode?) {

        // Edge cases
        if head == nil || head?.next == nil {
            return
        }

        // 1️⃣ Find middle (slow/fast)
        var slow = head
        var fast = head

        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // 2️⃣ Reverse second half
        var second = slow?.next
        slow?.next = nil   // split list

        var prev: ListNode? = nil
        while second != nil {
            let nextTemp = second?.next
            second?.next = prev
            prev = second
            second = nextTemp
        }

        // 3️⃣ Merge two halves
        var first = head
        var secondHalf = prev

        while secondHalf != nil {
            let temp1 = first?.next
            let temp2 = secondHalf?.next

            first?.next = secondHalf
            secondHalf?.next = temp1

            first = temp1
            secondHalf = temp2
        }
    }
}