class Solution {
    func evalRPN(_ tokens: [String]) -> Int {

        var stack:[Int] = []
        for st in tokens{
            if let num = Int(st){
                stack.append(num);
            }
            else{
                var first = stack.last ?? 0
                stack.removeLast()
                var second = stack.last ?? 0
                stack.removeLast()

                if st == "+"{
                    stack.append(first+second)
                }
                if st == "*"{
                    stack.append(first*second)
                }
                if st == "-"{
                    stack.append(second-first)
                }
                if st == "/"{
                    stack.append(second/first)
                }
            }
        }

        return stack.last ?? 0
    }
}
