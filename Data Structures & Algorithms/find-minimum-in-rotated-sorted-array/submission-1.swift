class Solution {
    func findMin(_ nums: [Int]) -> Int {

        var left = 0
        var right = nums.count-1
        var ans:Int = nums[0]
        while(left<=right){
            var mid:Int = (left+right)/2
            if(nums[mid] >= nums[0]){
                left = mid+1
                ans = min(ans,nums[mid]);
            }
            else{
                right = mid-1
                ans = min(ans,nums[mid])
            }

        }

        return ans

    }
}
