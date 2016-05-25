
require "pry-byebug"

# Given numRows, generate the first numRows of Pascal's triangle.
#
# For example, given numRows = 5,
# Return
#
# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# ]

# 58.33%
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  if num_rows == 0
    return []
  elsif num_rows == 1
    return [[1]]
  elsif num_rows == 2
    return [[1],[1,1]]
  elsif
    res = [[1],[1,1]]
    for i in 2..num_rows-1 do
      temp = [1]
      for j in 1..i-1 do
        temp << (res[i-1][j]+res[i-1][j-1])
      end
      temp << 1
      res << temp
    end
    return res.last
  end
end

generate(4)
