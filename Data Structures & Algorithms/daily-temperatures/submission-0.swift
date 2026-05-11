class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack:[(Int,Int)] = []
        var ans = Array(repeating: 0, count: temperatures.count)
        for i in 0..<temperatures.count{
            while !stack.isEmpty && stack.last!.0 < temperatures[i]{
            var (first, second) = stack.last!
                ans[second] = i-second
                stack.removeLast()
            
            }
            stack.append((temperatures[i],i))
        }

        return ans
        
    }
}
