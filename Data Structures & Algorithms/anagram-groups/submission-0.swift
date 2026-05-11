class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic:[String:[String]] = [:]
        for str in strs {
            let st = String(str.sorted())
            dic[st,default:[]].append(str)
        }
        var ans:[[String]] = []
        for (_,arr) in dic{
            ans.append(arr)
        }
        return ans
    }
}
