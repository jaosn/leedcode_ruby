
require "pry-byebug"


# Given two arrays, write a function to compute their intersection.
#
# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
#
# Note:
# Each element in the result should appear as many times as it shows in both arrays.
# The result can be in any order.
# Follow up:
# What if the given array is already sorted? How would you optimize your algorithm?
# What if nums1's size is small compared to num2's size? Which algorithm is better?
# What if elements of nums2 are stored on disk, and the memory is limited such that
# you cannot load all elements into the memory at once?


# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  u = nums1 & nums2
  temp = []
  u.each do |uu|
    uu1 = nums1.count(uu)
    uu2 = nums2.count(uu)
    sm = [uu1,uu2].min
    if sm > 1
      (sm-1).times do
        temp << uu
      end
    end
  end
  return u + temp
end

a1 = [1,2,3,4,5,2,3,2]
a2 = [2,3,4,2,2,3,4]
r = intersect(a1,a2)
puts r
