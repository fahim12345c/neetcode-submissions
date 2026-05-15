class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {

        var stack: [(Int, Int)] = []

    // Correct Array initializers
    var result: [Int] = Array(repeating: heights.count, count: heights.count)
    var result1: [Int] = Array(repeating: -1, count: heights.count)

    // Loop in reverse order (fixed reversed())
    for i in (0..<heights.count).reversed() {
        while !stack.isEmpty && stack.last!.0 >= heights[i] {
            stack.removeLast()
        }
        if let last = stack.last {
            result[i] = last.1
        }
        stack.append((heights[i], i))
    }

    // Clear stack correctly
    stack.removeAll()

    // Forward loop (fixed heights spelling)
    var mn:Int = 1000000000
    for i in 0..<heights.count {
        while !stack.isEmpty && stack.last!.0 >= heights[i] {
            stack.removeLast()
        }
        if let last = stack.last {
            result1[i] = last.1
        }
        stack.append((heights[i], i))
        mn=min(mn,heights[i]);
    }
        var mx:Int = mn*heights.count
        for i in 0..<heights.count{
            let area:Int = max(0,(result[i]-result1[i]-1))*heights[i]
            mx=max(mx,area)
        }
        return mx

    }
}
