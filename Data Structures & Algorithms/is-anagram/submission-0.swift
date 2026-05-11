class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
       var s1 = String(s.sorted())
       var  t1 = String(t.sorted())
        if(s1==t1){
            return true
        }
        return false
    }
}
