
require "pry-byebug"
require_relative "pretty_print"

# # 25%
# # @param {Integer[][]} matrix
# # @return {Void} Do not return anything, modify matrix in-place instead.
# def set_zeroes(matrix)
#   m = matrix.length # row
#   n = matrix[0].length # col
#   co = get_cooridnates(matrix)
#   if co.length == 0
#     matrix
#   else
#     co.each do |c|
#       for i in 0..m-1 do
#         matrix[i][c[1]] = 0
#       end
#       for j in 0..n-1 do
#         matrix[c[0]][j] = 0
#       end
#     end
#     return matrix
#   end
#
# end
#
# def get_cooridnates(matrix)
#   coor = []
#   matrix.each_with_index do |m,n|
#     temp = m.each_index.select{|i| m[i] == 0}
#     temp.each do |t|
#       coor << [n,t]
#     end
#   end
#   return coor
# end
#
#
# sample = [[1,2,3],[4,5,6],[7,8,9],[10,0,0]]
# r = set_zeroes(sample)
# binding.pry
# puts r


# 100%
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  m = matrix.length # row
  n = matrix[0].length # col
  co = get_cooridnates(matrix)
  if co.length == 0
    matrix
  else
    row = []
    col = []
    co.each do |c|
      if !row.include?(c[0])
        row << c[0]
        for j in 0..n-1 do
          matrix[c[0]][j] = 0
        end
      end
      if !col.include?(c[1])
        col << c[1]
        for i in 0..m-1 do
          matrix[i][c[1]] = 0
        end
      end
    end
    return matrix
  end
end

def get_cooridnates(matrix)
  coor = []
  matrix.each_with_index do |m,n|
    temp = m.each_index.select{|i| m[i] == 0}
    temp.each do |t|
      coor << [n,t]
    end
  end
  return coor
end


sample = [[0,0,0,5],[4,3,1,4],[0,1,1,4],[1,2,1,3],[0,0,1,1]]
r = set_zeroes(sample)
puts pretty_print_matrix(r)
