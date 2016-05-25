
require "pry-byebug"

# Given two integers n and k, return all possible combinations of k numbers out of 1 ... n.
#
# For example,
# If n = 4 and k = 2, a solution is:
#
# [
#   [2,4],
#   [3,4],
#   [2,3],
#   [1,2],
#   [1,3],
#   [1,4],
# ]


# 77.8%
# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  ar = create_array(n)
  return ar.combination(k).to_a
end

def create_array(n)
  temp = []
  for i in 0..n-1 do
    temp << i+1
  end
  return temp
end
