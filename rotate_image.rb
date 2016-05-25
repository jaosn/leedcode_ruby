require "pry-byebug"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  result = []
  for i in 0..matrix.length-1 do
    line = []
    for j in 0..matrix.length-1 do
      line << matrix[matrix.length-1-j][i]
    end
    result << line
  end
  for i in 0..matrix.length-1 do
    matrix[i] = result[i]
  end
end


sample = [[1,2],[3,4]]
r = rotate(sample)
sample2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]] # [[13,9,5,1],[14,10,6,2],[15,11,7,3],[16,12,8,4]]
re = rotate(sample2)
binding.pry
puts "r"
