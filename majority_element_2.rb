

require "pry-byebug"
require "set"
# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
#   The algorithm should run in linear time and in O(1) space.
#
# Hint:
#
# How many majority elements could it possibly have?
# Do you have a better hint? Suggest it!

# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  return [] if nums.length == 0
  return nums if nums.length == 1
  return nums.uniq if nums.length == 2
  res = Set.new
  len = (nums.length.to_f / 3).floor
  hash = {}
  for i in 0..nums.length-1 do
    if !hash.key?(nums[i])
      hash[nums[i]] = 1
    else
      hash[nums[i]] += 1
      res.add(nums[i]) if hash[nums[i]] > len
    end
  end
  return res.to_a
end
nums = [1,2,2]
puts majority_element(nums)
