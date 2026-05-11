class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str:String = ""

        for ch in s{
            if ch.isLetter || ch.isNumber{
                str += String(ch).lowercased()
            }
        }

        let str1 = String(str.reversed())
        print(str1)
        return str == str1

    }
}
