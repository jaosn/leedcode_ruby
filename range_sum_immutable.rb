
require "pry-byebug"

# Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.
#
# Example:
# Given nums = [-2, 0, 3, -5, 2, -1]
#
# sumRange(0, 2) -> 1
# sumRange(2, 5) -> -1
# sumRange(0, 5) -> -3


# 61.5 %
class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
      @nums = nums
      @concate = concise()
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def concise()
      concate = []
      @nums.each_with_index do |e,i|
        if i == 0
          concate << @nums[0]
        else
          concate << concate[i-1]+@nums[i]
        end
      end
      return concate
    end

    def sum_range(i, j)
      if i > 0 then return @concate[j] - @concate[i-1] else return @concate[j] end
    end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)


num_array = NumArray.new([-2, 0, 3, -5, 2, -1])

puts num_array.sum_range(0, 1)
puts num_array.sum_range(0, 2)
