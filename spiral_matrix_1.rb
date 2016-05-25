require "pry-byebug"

# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  if matrix.length == 0
    []
  elsif matrix.length == 1
    matrix[0]
  else
    res = []
    i,j = 0,0
    di,dj = 0,1
    m,n = matrix.length, matrix[0].length # row col
    for k in 0..(m*n)-1 do
      res << matrix[i][j]
      matrix[i][j] = ""
      if matrix[(i+di)%m][(j+dj)%n] == ""
        di, dj = dj, -di
      end
      i += di
      j += dj
    end
    return res
  end
end


def print_helper(mat)
  mat.each do |m|
    re = "["
    m.each_with_index do |t,i|
      if i == m.length-1
        re += t.to_s
      else
        re += t.to_s + ","
      end
    end
    puts re+"]"
  end
end

sample = [[1,2],[3,4],[5,6]]
r = spiral_order(sample)
# print_helper(sample)
# puts r
