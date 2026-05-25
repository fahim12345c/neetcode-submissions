/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

func invert(_ root: TreeNode?)-> TreeNode? {

    guard let root = root else {
            return nil
    }
    let temp = root.left
    root.left = invert(root.right)
    root.right = invert(temp)
    return root
}
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        return invert(root)
    }
}
