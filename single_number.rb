
require "pry-byebug"

# Given an array of integers, every element appears twice except for one. Find that single one.
#
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.sort!
  n = 0
  while n <= nums.length-1
    if nums[n] == nums[n+1]
      n+= 2
    else
      return nums[n]
    end
  end
end
