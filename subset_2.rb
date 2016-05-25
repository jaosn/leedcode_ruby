
require "pry-byebug"

# Given a collection of integers that might contain duplicates, nums, return all possible subsets.
#
# Note:
# Elements in a subset must be in non-descending order.
# The solution set must not contain duplicate subsets.
# For example,
# If nums = [1,2,2], a solution is:
#
# [
#   [2],
#   [1],
#   [1,2,2],
#   [2,2],
#   [1,2],
#   []
# ]

# 83%
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  nums.sort!
  res = []
  for i in 0..nums.length do
    nums.combination(i).each {|c| res << c}
  end
  return res.uniq
end

nums = [1]
r = subsets_with_dup(nums)
binding.pry
puts "s"
