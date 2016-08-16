
require "pry-byebug"

# Given a 2D binary matrix filled with 0's and 1's,
#   find the largest square containing all 1's and return its area.
#
# For example, given the following matrix:
#
# 1 0 1 0 0
# 1 0 1 1 1
# 1 1 1 1 1
# 1 0 0 1 0
# Return 4.


# # 28.57 %
# # @param {Character[][]} matrix
# # @return {Integer}
# def maximal_square(matrix)
#   return 0 if matrix == nil || matrix == []
#   row,col = matrix.length, matrix[0].length
#   res = 0
#   for i in 0..row-1 do
#     for j in 0..col-1 do
#       if matrix[i][j] == "1"
#         temp = helper(i,j,matrix,row,col,1)
#         res = temp >= res ? temp : res
#       end
#     end
#   end
#   return res
# end
#
# def helper(i,j,matrix,row,col,largest)
#   len = (row-i) > (col-j) ? (col-j-1) : (row-i-1)
#   break_point = false
#   # puts "#{i},#{j} -- #{len}"
#   return 1 if len == 0
#   for k in 1..len do
#     for t in 0..k do
#       if matrix[i+k][j+t] == "0" || matrix[i+t][j+k] == "0"
#         # puts "now k is: #{k}"
#         # binding.pry
#         break_point = true
#         largest = k ** 2
#         break
#       end
#       # puts "#{i+k},#{j+t} : #{matrix[i+k][j+t]} "
#       # puts "#{i+t},#{j+k} : #{matrix[i+t][j+k]}"
#       # puts "+++++"
#     end
#     break if break_point
#   end
#   if break_point == false
#     # binding.pry
#     largest = (len+1) ** 2
#   end
#
#   # puts "result is #{largest}"
#   return largest
# end
#
# m = ["1110","1100","1110","0000"]
# puts maximal_square(m)
