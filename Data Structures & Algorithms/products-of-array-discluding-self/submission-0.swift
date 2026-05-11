class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
          
        var pre = Array(repeating: 0, count: nums.count)
        var suf = Array(repeating: 0, count: nums.count)
        var cnt = 1
        for i in 0..<nums.count{
            cnt = cnt * nums[i]
            pre[i] = cnt
        }

        cnt = 1

        for i in (0..<nums.count).reversed(){
            cnt = cnt * nums[i]
            suf[i] = cnt
        }

        var ans:[Int] = []
        for i in 0..<nums.count{
            if(i == 0){
                ans.append(suf[i+1])
            }
            else if(i ==  nums.count-1){
                ans.append(pre[i-1]);
            }
            else{
                ans.append(pre[i-1]*suf[i+1])
            }
        }

        return ans

    }
}
