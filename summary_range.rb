
require "pry-byebug"

# Given a sorted integer array without duplicates, return the summary of its ranges.
#
# For example, given [0,1,2,4,5,7], return ["0->2","4->5","7"].

# 45 %
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.length == 0 || nums == nil
  start = nums[0]
  res = []
  count = 1
  for i in 1..nums.length-1 do
    current = nums[i]
    if current - count == start
      count += 1
    else
      # binding.pry
      if count == 1
        res << start.to_s
      else
        str = start.to_s + "->" + nums[i-1].to_s
        res << str
      end
      start = nums[i]
      count = 1
    end
  end
  # binding.pry
  if count > 1
    str = start.to_s + "->" + nums.last.to_s
    res << str
  else
    res << start.to_s
  end
  # binding.pry
  return res
end

nums = [0,2,4,5,7,8,9,11,13]
puts summary_ranges(nums)
