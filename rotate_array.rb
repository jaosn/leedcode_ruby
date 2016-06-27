
require "pry-byebug"

# Rotate an array of n elements to the right by k steps.
#
# For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
#
# Note:
# Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.

# 55 %
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  len = nums.length
  if len >= 2
    if k >= len
      k = k % len
    end
    part1 = nums[0..len-1-k]
    part2 = nums[len-k..len-1]
    nums[0..k-1] = part2
    nums[k..len-1] = part1
  end
end

nums = [1,2]
k = 1
rotate(nums,k)
