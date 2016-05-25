
require "pry-byebug"

# Follow up for "Remove Duplicates":
# What if duplicates are allowed at most twice?
#
# For example,
# Given sorted array nums = [1,1,1,2,2,3],
#
# Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3.
# It doesn't matter what you leave beyond the new length.

# 66.67%
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  if nums.length == 0
    return 0
  else
    nums.each_with_index do |num,i|
      if nums[i+1] == num
        while nums[i+2] == num
          nums.delete_at(i+2)
        end
      end
    end
    return nums.length
  end
end

# def nums_hash(nums)
#   hash = {}
#   nums.each do |n|
#     if !hash.key?(n)
#       hash[n] = 1
#     else
#       hash[n] += 1
#     end
#   end
#   return hash
# end

nums = [1,1,1,1,1,2,2,2,2,3,3,3,4]
h = remove_duplicates(nums)
puts h
