require 'pry-byebug'

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  box = [[1,1],[1,4],[1,7],[4,1],[4,4],[4,7],[7,1],[7,4],[7,7]]
  for n in 1..9 do
    if check_row?(n,board) == false || check_col?(n,board)==false
      return false
    end
  end
  box.each {|param| if !check_box?(param[0],param[1],board) then return false end}
  return true
end

def check_row?(n,board)
  temp = []
  for i in 0..8 do
    char = board[n-1][i]
    if char!="." && temp.include?(char)
      return false
    else
      temp << char
    end
  end
  return true
end

def check_col?(n,board)
  temp = []
  for i in 0..8 do
    char = board[i][n-1]
    if char != "." && temp.include?(char)
      return false
    else
      temp << char
    end
  end
  return true
end

def check_box?(n,m,board)
  temp = []
  for i in 0..2 do
    for j in 0..2 do
      char = board[n+i-1][m+j-1]
      if char != "." && temp.include?(char)
        return false
      else
        temp << char
      end
    end
  end
  return true
end

board = [["2","8","7","6","5","4","3","2","1"],
        ["2",".",".",".",".",".",".",".","."],
        ["3",".",".",".",".",".",".",".","."],
        ["4",".",".",".",".",".",".",".","."],
        ["5",".",".",".",".",".",".",".","."],
        ["6",".",".",".",".",".",".",".","."],
        ["7",".",".",".",".",".",".",".","."],
        ["8",".",".",".",".",".",".",".","."],
        ["9",".",".",".",".",".",".",".","."],
      ]
puts is_valid_sudoku(board)
