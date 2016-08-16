
require "pry-byebug"

# Given a list of non negative integers, arrange them such that they form the largest number.
#
# For example, given [3, 30, 34, 5, 9], the largest formed number is 9534330.
#
# Note: The result may be very large, so you need to return a string instead of an integer.

# # wrong but good thought
# # @param {Integer[]} nums
# # @return {String}
# def largest_number(nums)
#   return "" if nums.length == 0
#   return nums.join if nums.length == 1
#   return nums.sort!.reverse!.join if nums.max <= 9
#   if nums.max >= 10
#     res = []
#     nums.each do |n|
#       s = n.to_s
#       temp = []
#       for i in 0..s.length-1 do
#         temp << s[i].to_i
#       end
#       res <<  temp
#     end
#   end
#   binding.pry
#   return res.sort.reverse.join
# end
#
# n = [3, 30, 34, 342, 5, 9]
# puts largest_number(n)

# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums.sort! {|a,b| b.to_s+a.to_s <=> a.to_s+b.to_s}
  return "0" if nums[0] == 0
  return nums.join
end

n = [3, 30, 34, 342, 5, 9]
puts largest_number(n)
