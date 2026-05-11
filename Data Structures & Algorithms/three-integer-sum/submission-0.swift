class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let nums = nums.sorted()
        var set:Set<[Int]> = []
        var ans:[[Int]] = []
        for i in 0..<nums.count{

            for j in i+1..<nums.count{
                let baki = -nums[i] - nums[j]
                var left = j+1 , right = nums.count-1

                while left <= right{
                    let mid:Int = (left+right)/2 

                    if baki > nums[mid] {
                        left = mid + 1
                    }
                    else if baki < nums[mid] {
                        right = mid - 1
                    }
                    else{
                        if !set.contains([nums[i],nums[j],nums[mid]]){
                            set.insert([nums[i],nums[j],nums[mid]])
                            ans.append([nums[i],nums[j],nums[mid]])
                        }
                        break
                    }
                }
            }
            
        }
        return ans
    }
}
