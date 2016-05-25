
require "pry-byebug"
require_relative "pretty_print"

# 90%
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  m = matrix.length # row
  n = matrix[0].length # col
  matrix.each do |mat|
    if target >= mat.first && target <= mat.last
      if mat.include?(target) then return true else return false end
    end
  end
  return false
end


sample = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
puts search_matrix(sample, 3)

# puts pretty_print_matrix(sample)
