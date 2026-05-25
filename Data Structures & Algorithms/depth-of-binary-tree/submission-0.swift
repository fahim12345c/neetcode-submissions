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

class Solution {
    func depth(_ root: TreeNode?) -> Int{
        guard let root = root else {
            return 0
        }
        var ans:Int = 0 

        ans = max(depth(root.left),depth(root.right))+1
        return ans
    }
    func maxDepth(_ root: TreeNode?) -> Int {

        return depth(root)

    }
}
