
require 'pry-byebug'

# # 24.6%
# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def move_zeroes(nums)
#   if !nums.include?(0)
#     nums
#   else
#     indexes = nums.each_index.select{|i| nums[i] == 0}
#     nums.delete(0)
#     for i in 1..indexes.length do
#       nums << 0
#     end
#     return nums
#   end
# end
#
# sample = [1,7,0,0,3,5,0,6,4]
# puts move_zeroes(sample)


# # 10.6%
# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def move_zeroes(nums)
#   count = 0
#   while nums.include?(0)
#     nums.slice!(nums.index(0))
#     count += 1
#   end
#   if count == 0
#     nums
#   else
#     for i in 1..count do
#       nums << 0
#     end
#     return nums
#   end
# end
#
# sample = [1,7,0,0,3,5,0,6,4]
# puts move_zeroes(sample)


# # 43.6%
# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def move_zeroes(nums)
#   if !nums.include?(0)
#     nums
#   else
#     origin = nums.length
#     nums.delete(0)
#     differ = origin - nums.length
#     for n in 1..differ do
#       nums << 0
#     end
#     return nums
#   end
# end
#
# sample = [1,7,0,0,3,5,0,6,4]
# puts move_zeroes(sample)
