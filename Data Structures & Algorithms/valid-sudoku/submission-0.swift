class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
         for row in 0..<board.count{
            var seen:Set<Character> = []
            for col in 0..<board[0].count{
                if(board[row][col] != "."){
                    if seen.contains(board[row][col]){
                        return false
                    }
                    seen.insert(board[row][col])
                }
                
            }
        }

        for col in 0..<board[0].count{
            var seen:Set<Character> = []
            for row in 0..<board.count{
                if(board[row][col] != "."){
                    if seen.contains(board[row][col]){
                        return false
                    }
                    seen.insert(board[row][col])
                }
            }
        }


        for row in stride(from: 0, to: board.count,by: 3){
            for col in stride(from: 0, to: board[0].count,by:3){
                var seen:Set<Character> = []

                for i in 0..<3{
                    for j in 0..<3{
                        if(board[row+i][col+j] != "."){
                            if seen.contains(board[row+i][col+j]){
                                return false
                            }
                            seen.insert(board[row+i][col+j])
                  }
                }
                }
            }
        }

        return true
    }
}
