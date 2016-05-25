
require "pry-byebug"

# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
#
# Note:
# You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
# The number of elements initialized in nums1 and nums2 are m and n respectively.

# # 18.75%
# # @param {Integer[]} nums1
# # @param {Integer} m
# # @param {Integer[]} nums2
# # @param {Integer} n
# # @return {Void} Do not return anything, modify nums1 in-place instead.
# def merge(nums1, m, nums2, n)
#   if m == 0
#     if n != 0
#       nums1[0..m+n-1] = nums2[0..n-1]
#     end
#   else
#     if n != 0
#       nums1[m..m+n] = nums2[0..n-1]
#     end
#   end
#   nums1.sort!
# end
#
# # [1,2,3,0,0,0]
# # 3
# # [2,5,6]
# # 3
#
# # [0]
# # 0
# # [1]
# # 1
#
# merge([0],0,[1],1)

# 52.65%
# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  if m == 0
    if n != 0
      nums1[0..m+n-1] = nums2
    end
  else
    if n != 0
      nums1[m..m+n] = nums2
    end
  end
  nums1.sort!
end
