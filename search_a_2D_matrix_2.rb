
require "pry-byebug"

# Write an efficient algorithm that searches for a value in an m x n matrix.
#   This matrix has the following properties:
#
# Integers in each row are sorted in ascending from left to right.
# Integers in each column are sorted in ascending from top to bottom.
# For example,
#
# Consider the following matrix:
#
# [
#   [1,   4,  7, 11, 15],
#   [2,   5,  8, 12, 19],
#   [3,   6,  9, 16, 22],
#   [10, 13, 14, 17, 24],
#   [18, 21, 23, 26, 30]
# ]
# Given target = 5, return true.
#
# Given target = 20, return false.

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if target > matrix.last.last || target < matrix[0][0]
  row = 0
  res = false
  for i in 0..matrix.length-1 do
    if target >= matrix[i].first && target <= matrix[i].last
      res = true if matrix[i].include?(target)
    end
  end
  return res
end
