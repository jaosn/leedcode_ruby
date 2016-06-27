
require "pry-byebug"

# Given a 2D board containing 'X' and 'O', capture all regions surrounded by 'X'.
#
# A region is captured by flipping all 'O's into 'X's in that surrounded region.
#
# For example,
# X X X X
# X O O X
# X X O X
# X O X X
# After running your function, the board should be:
#
# X X X X
# X X X X
# X X X X
# X O X X

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve(board)
  m,n = board.length, board.first.length
  temp = []
  # binding.pry
  for i in 0..m-1 do
    for j in 0..n-1 do
      if board[i][j] == "0"
        temp << [i,j]
      end
    end
  end
  temp.each do |t|

  end
  binding.pry
end

def valid?(board,m,n)
  if m == 0 || n == 0
    return false
  else
    
  end
end

board = [
  ["x","x","x","x"],
  ["X","0","0","x"],
  ["x","x","x","x"],
  ["x","0","x","x"]
]
solve(board)
