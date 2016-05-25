
require "pry-byebug"

# Given a set of distinct integers, nums, return all possible subsets.
#
# Note:
# Elements in a subset must be in non-descending order.
# The solution set must not contain duplicate subsets.
# For example,
# If nums = [1,2,3], a solution is:
#
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]

# 52.63%
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  nums.sort!
  res = []
  for i in 0..nums.length do
    nums.combination(i).each {|c| res << c}
  end
  return res
end

sample = [1,3,2]
r = subsets(sample)
binding.pry
puts "t"
