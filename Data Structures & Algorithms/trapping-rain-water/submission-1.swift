class Solution {
    func trap(_ height: [Int]) -> Int {

        let n = height.count
        if n == 0 { return 0 }

        var pre = Array(repeating: 0, count: n)
        var premx = Array(repeating: 0, count: n)
        var sufmx = Array(repeating: 0, count: n)

        pre[0] = height[0]
        premx[0] = height[0]
        sufmx[n - 1] = height[n - 1]

        for i in 1..<n {
            premx[i] = max(premx[i - 1], height[i])
        }

        for i in stride(from: n - 2, through: 0, by: -1) {
            sufmx[i] = max(sufmx[i + 1], height[i])
        }

        var sum = 0

        for i in 0..<n {
            let val = max(0, min(premx[i], sufmx[i]) - height[i])
            sum += val
        }

        return sum
    }
}