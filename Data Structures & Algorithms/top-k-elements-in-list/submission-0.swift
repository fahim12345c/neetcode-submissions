class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var dic:[Int:Int]=[:]
        for num in nums{
            dic[num] = (dic[num] ?? 0) + 1
        }

        var arr:[(Int,Int)] = []
        var ans:[Int] = []
        for (key,val) in dic {
            arr.append((val,key))
        }

        arr = arr.sorted{$0.0 > $1.0}

        for i in 0..<k{
            ans.append(arr[i].1)
        }
        return ans
    }
}
