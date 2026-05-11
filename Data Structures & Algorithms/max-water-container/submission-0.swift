class Solution {
    func maxArea(_ heights: [Int]) -> Int {

         var left = 0, right = heights.count - 1, mx = 0
         while left < right{
            var tot = (right - left)*min(heights[left],heights[right])
            mx=max(mx,tot)
            if heights[left] <= heights[right] {
                left += 1
            }
            else{
                right -= 1
            }
         }

         return mx
    }
}
