class Solution {
    var msg:String = ""
    func encode(_ strs: [String]) -> String {

        for str in strs{
            msg = msg + "\(str.count)#\(str)"
        }
        return msg
    }

    func decode(_ str: String) -> [String] {

        var ans:[String] = []
        var st:String = ""
        var cnt  = 0
        for c in str{
            if cnt==0 && c == "#"{
                cnt = Int(st) ?? 0
                st = ""

                if cnt == 0 {        
                ans.append("")
               }
            }
            else{
                if(cnt==0){
                   st = st + String(c)
                }
                else{
                    st = st + String(c)
                    cnt -= 1  
                    if(cnt==0){
                        ans.append(st)
                        st = ""
                    }
                }
            }
        }

        return ans

    }
}
