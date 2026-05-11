class Solution {
    func isValid(_ s: String) -> Bool {
     
     var str:String = ""
     for ch in s{

        if ch == ")" || ch == "}" || ch == "]" {
            
            if str.isEmpty {
                return false
            }
            if (ch == ")" && str.last != "(") || (ch == "}" && str.last != "{") || (ch == "]" && str.last != "["){
                return false
            }
            str.removeLast()
        }
        else{
            str.append(ch)
        }
        
     }
     return str.isEmpty


    }
}
