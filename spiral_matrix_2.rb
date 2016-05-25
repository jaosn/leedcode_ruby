
require 'pry-byebug'

# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  matrix = create_matrix(n)
  i,j = 0,0
  di,dj = 0,1
  for k in 0..(n*n)-1 do
    # binding.pry
    matrix[i][j] = k + 1
    if matrix[(i+di)%n][(j+dj)%n] != 0
      di, dj = dj, -di
    end
    i += di
    j += dj
  end
  return matrix
end

def create_matrix(n)
  temp = []
  for i in 0..n-1 do
    temp << Array.new(n,0)
  end
  return temp
end

sample = generate_matrix(4)
binding.pry
puts "1"
