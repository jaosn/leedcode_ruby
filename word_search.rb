
require "pry-byebug"

# Given a 2D board and a word, find if the word exists in the grid.
#
# The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.
#
# For example,
# Given board =
#
# [
#   ['A','B','C','E'],
#   ['S','F','C','S'],
#   ['A','D','E','E']
# ]
# word = "ABCCED", -> returns true,
# word = "SEE", -> returns true,
# word = "ABCB", -> returns false.

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  if board.length == 0 || words == 0
    return false
  else
    m = board.length # row
    n = board[0].length # col
    board.each_with_index do |b,i|
      if b.include?(word[0])
        indx = b.each_index.select{|x| b[x] == word[0]}
        indx.each do |id|

        end
      end
    end
  end
end

def check?(i,j,board,word,m,n)
  if word.length != 0
    if board[i][j] == word[0]
      if i+1 <= m-1
        if board[i+1][j] == word[1]
          puts "#{i+1},#{j},#{word}"
          check?(i+1,j,board,word[1..word.length-1],m,n)
        end
      end
      if i-1 >= 0
        if board[i-1][j] == word[1]
          puts "#{i-1},#{j},#{word}"
          check?(i-1,j,board,word[1..word.length-1],m,n)
        end
      end
      if j+1 <= n-1
        if board[i][j+1] == word[1]
          puts "#{i},#{j+1},#{word}"
          check?(i,j+1,board,word[1..word.length-1],m,n)
        end
      end
      if j-1 >= 0
        if board[i][j-1] == word[1]
          puts "#{i},#{j-1},#{word}"
          check?(i,j-1,board,word[1..word.length-1],m,n)
        end
      end
    else
      return false
    end
  else
    return true
  end
end

board = [
  ['A','B','C','E'],
  ['S','F','C','S'],
  ['A','D','E','E']
]
word = "SEE"
puts check?(1,3,board,word,3,4)
