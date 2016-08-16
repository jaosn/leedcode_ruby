
require "pry-byebug"

# Given an array of n integers where n > 1, nums,
#   return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
#
# Solve it without division and in O(n).
#
# For example, given [1,2,3,4], return [24,12,8,6].

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  pd = []
  product = 1
  for i in 0..nums.length-1 do
    pd[i] = product
    product *= nums[i]
  end
  product = 1
  for i in 0..nums.length-1 do
    pd[nums.length-1-i] *= product
    product *= nums[nums.length-1-i]
  end

  return pd
end

nums = [1,2,3,4]
puts product_except_self(nums)
