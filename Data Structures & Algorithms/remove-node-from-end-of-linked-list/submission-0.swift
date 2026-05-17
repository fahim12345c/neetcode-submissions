/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var cnt:Int = 0
        var node = head
        while node != nil{
            node = node?.next
            cnt = cnt + 1
        }
        node = head
        var baki = cnt-n
        if(baki == 0){
            return node?.next
        }

        while baki > 0{
            baki = baki - 1
            if(baki == 0){
                node?.next = node?.next?.next
                break
            }
            node = node?.next
        }

        return head

    }
}
