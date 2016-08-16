
require "pry-byebug"

# Find the kth largest element in an unsorted array.
#   Note that it is the kth largest element in the sorted order, not the kth distinct element.
#
# For example,
# Given [3,2,1,5,6,4] and k = 2, return 5.
#
# Note:
# You may assume k is always valid, 1 ≤ k ≤ array's length.

# # @param {Integer[]} nums
# # @param {Integer} k
# # @return {Integer}
# def find_kth_largest(nums, k)
#   nums.sort! {|a,b| b <=> a}
#   return nums[k-1]
#   # binding.pry
#
# end
# n = [3,2,1,5,6,4]
# k = 2
# find_kth_largest(n,k)


# 77 %
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  nums.sort!
  return nums[nums.length-k]
  # binding.pry

end
n = [3,2,1,5,6,4]
k = 2
puts find_kth_largest(n,k)
