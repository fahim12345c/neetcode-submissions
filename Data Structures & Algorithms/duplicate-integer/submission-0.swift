class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var cnt:[Int:Int] = [:]
        for num in nums {
            cnt[num] = (cnt[num] ?? 0)+1;
        }

        for (first,second) in cnt {
            if second>1{
                return true
            }
        }
        return false
    }
}
