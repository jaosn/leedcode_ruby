
require "pry-byebug"

# Given an unsorted array of integers, find the length of the longest consecutive elements sequence.
#
# For example,
# Given [100, 4, 200, 1, 3, 2],
# The longest consecutive elements sequence is [1, 2, 3, 4]. Return its length: 4.
#
# Your algorithm should run in O(n) complexity.

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  if nums.length <= 1
    return 1
  else
    nums.sort!.uniq!
    res = []
    n = 0
    temp = []
    while n <= nums.length-1 do
      if temp.length == 0
        temp << nums[n]
      elsif nums[n] - temp.last == 1
        temp << nums[n]
      else
        if res.length <= temp.length
          res = temp
        end
        n -= 1
        temp = []
      end
      if res.length <= temp.length
        res = temp
      end
      n += 1
    end
    return res.length
  end
end

# nums = [100, 4, 200, 1, 3, 2]
# nums = [0,1,2,3,4,1,1,2]
nums = [9,1,4,7,3,-1,0,5,8,-1,6]
puts longest_consecutive(nums)
