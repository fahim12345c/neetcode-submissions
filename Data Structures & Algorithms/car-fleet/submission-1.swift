class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {

        var car:[(Int,Int)] = []
        for i in 0..<position.count{
            car.append((position[i],speed[i]))
        }
        let newCar = car.sorted{ $0.0 < $1.0 }

        var tot:[Double] = []

        for (pos,speed) in newCar{
            var time:Double = Double(target - pos) / Double(speed)
            while(!tot.isEmpty && time >= tot.last!){
                tot.removeLast()
            }
            tot.append(time)
        } 
        return tot.count

    }
}
