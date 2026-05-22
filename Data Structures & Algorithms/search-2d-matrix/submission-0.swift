class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {

        var left: Int = 0
        var right: Int = matrix.count-1
        while(left<=right){

            var mid:Int = (left + right)/2

            if(matrix[mid][0] > target){
                right = mid-1
            }
            else if (matrix[mid][matrix[0].count-1]) < target{
                left = mid+1
            }
            else{

                var left1 = 0
                var right1 = matrix[0].count - 1
                while(left1<=right1){
                    var mid1:Int = (left1+right1)/2

                    if(matrix[mid][mid1]>target){
                        right1 = mid1 - 1
                    }
                    else if ( matrix[mid][mid1] < target){
                        left1 = mid1 + 1
                    }
                    else{
                        return true
                    }
                }
                return false
            }
        }

        return false

    }
}
