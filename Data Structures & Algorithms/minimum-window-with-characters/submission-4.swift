class Solution {
    func minWindow(_ s: String, _ t: String) -> String {

        if(t.count > s.count){
            return ""
        }
        var dict: [Character: Int] = [:]
        for c in t {
            dict[c, default: 0] += 1
        }
        let arr = Array(t)
        let arr1 = Array(s)
        var left = 1
        var right = s.count
        var ans: String = ""

        while(left<=right){
            var mid:Int = (left+right)/2
            var j = 0
            var k = 0
            var flg:Bool = false
            var str:String = ""
            var dict1 = dict
            for i in 0..<arr1.count{
                if(dict1[arr1[i], default: 0] > 0){
                    j += 1
                }
                dict1[arr1[i], default: 0] -= 1
                if(j ==  arr.count){
                    flg = true
                    break
                }
                if(i >= mid-1){
                    dict1[arr1[k], default: 0] += 1
                    if(dict1[arr1[k], default: 0] > 0){
                    j -= 1                   
                   }
                   k += 1
                }
            }
            if(flg){
                right = mid-1
                let start = s.index(s.startIndex, offsetBy: k)

                let end = s.index(start, offsetBy: mid)

                ans = String(s[start..<end])
            }
            else{
                left = mid + 1
            }
        }

        return ans

    }
}
