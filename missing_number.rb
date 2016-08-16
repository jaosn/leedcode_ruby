
require "pry-byebug"

# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n,
#   find the one that is missing from the array.
#
# For example,
# Given nums = [0, 1, 3] return 2.

# # 11 %
# # @param {Integer[]} nums
# # @return {Integer}
# def missing_number(nums)
#     nums.sort!
#     return 0 if nums.first != 0
#     pre = nums[0]
#     for i in 1..nums.length-1 do
#       if nums[i] - pre == 1
#         pre = nums[i]
#       else
#         return pre + 1
#       end
#     end
#     return pre + 1 if pre == nums.last
# end

# # 33 %
# # @param {Integer[]} nums
# # @return {Integer}
# def missing_number(nums)
#   res = 0
#   for i in 0..nums.length  do
#     res += i
#   end
#   sum = nums.inject(0) { |sum, n| sum + n }
#   return res - sum
# end

# # 33 %
# # @param {Integer[]} nums
# # @return {Integer}
# def missing_number(nums)
#   res = 0
#   sum = 0
#   for i in 0..nums.length-1  do
#     res += i
#     sum += nums[i]
#   end
#   res += nums.length
#   return res - sum
# end

# 33 %
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)

  sum = 0
  for i in 0..nums.length-1  do
    sum += nums[i]
  end
  n = nums.length + 1
  res = n * (n-1) / 2
  return res - sum
end
