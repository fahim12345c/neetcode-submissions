class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var nums1 = nums.sorted()
        var mx:Int = 0
        for i in 0..<nums1.count{
            var pre:Int = nums1[i]
            var cnt:Int = 1
            for j in i+1..<nums1.count{
                if (nums1[j] - pre == 1){
                    cnt+=1
                    pre = nums1[j]
                }
            }
            mx = max(mx, cnt)
        }

        return mx
    }
}
