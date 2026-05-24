class Solution {

    func checkInclusion(_ s1: String, _ s2: String) -> Bool {

        if s2.count < s1.count {
            return false
        }

        var dict: [Character: Int] = [:]

        for c in s1 {
            dict[c, default: 0] += 1
        }

        let arr = Array(s2)

        var j = 0
        var k = 0

        for i in 0..<arr.count {

            j += 1

            dict[arr[i], default: 0] -= 1

            while k <= i &&
                  dict[arr[i], default: 0] < 0 {

                dict[arr[k], default: 0] += 1

                k += 1
                j -= 1
            }

            if j == s1.count {
                return true
            }
        }

        return false
    }
}