require 'pry-byebug'

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
  chars = ["1","2","3","4","5","6","7","8","9"]
  copy = board.dup
end

def check_row(n,board)
  temp = []
  for i in 0..8 do
    char = board[n][i]
    if char == "." || temp.include?(char)
      return false
    else
      temp << char
    end
  end
  return true
end


def check_col(n,board)
  temp = []
  for i in 0..8 do
    char = board[i][n]
    if char == "." || temp.include?(char)
      return false
    else
      temp << char
    end
  end
  return true
end

def check_box(n,m,board)
  origin = get_origin(n,m)
  temp = []
  for i in 0..2 do
    for j in 0..2 do
      char = board[origin[0]+i][origin[1]+j]
      puts char
      if char == "." || temp.include?(char)
        return false
      else
        temp << char
      end
    end
  end
  return true
end

def get_array(n,m,board,chars)
  row = get_row_rest(n,board,chars)
  col = get_col_rest(m,board,chars)
  box = get_box_rest(n,m,board,chars)
  # puts row
  # puts "+++++++"
  # puts col
  # puts "+++++++"
  # puts box
  # puts "+++++++"
  temp = row & col & box
  return temp
end

def get_row_rest(n,board,chars)
  temp = board[n].dup
  temp.delete(".")
  result = chars - temp
  return result
end

def get_col_rest(n,board,chars)
  temp = chars.dup
  for i in 0..8 do
    char = board[i][n]
    if char != "."
      temp.delete(char)
    end
  end
  return temp
end

def get_box_rest(n,m,board,chars)
  temp = chars.dup
  origin = get_origin(n,m)
  for i in 0..2 do
    for j in 0..2 do
      char = board[origin[0]+i][origin[1]+j]
      temp.delete(char)
    end
  end
  return temp
end

def get_origin(n,m)
  if 0 <= n && n <= 2
    x = 0
  elsif 3 <= n && n <= 5
    x = 3
  else
    x = 6
  end
  if 0 <= m && m <= 2
    y = 0
  elsif 3 <= m && m <= 5
    y = 3
  else
    y = 6
  end
  return [x,y]
end

chars = ["1","2","3","4","5","6","7","8","9"]

# board = [["2","4","8",".",".","9","7","4","8"],
#         ["7","3","6",".",".",".",".",".","."],
#         ["9","1","5",".","","9",".",".","."],
#         [".",".","7",".",".",".","2","4","."],
#         [".","6","4",".","1",".","5","9","."],
#         [".","9","8",".",".",".","3",".","."],
#         [".",".",".",".","8",".","3",".","2"],
#         [".",".",".",".",".",".",".",".","6"],
#         [".",".",".","2","7","5","9",".","."],
#       ]

board = [[".",".",".",".",".","9","7","4","8"],
        ["7",".",".",".",".",".",".",".","."],
        [".","2",".",".","","9",".",".","."],
        [".",".","7",".",".",".","2","4","."],
        [".","6","4",".","1",".","5","9","."],
        [".","9","8",".",".",".","3",".","."],
        [".",".",".",".","8",".","3",".","2"],
        [".",".",".",".",".",".",".",".","6"],
        [".",".",".","2","7","5","9",".","."],
      ]

# puts check_row(0,board)
# puts get_row_rest(0,board,chars)
# puts "+++++++++"
# puts get_col_rest(0,board,chars)
# get_box_rest(6,7,board,chars)
# puts get_array(1,1,board,chars)
# puts check_box(1,2,board)
