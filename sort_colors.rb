
require "pry-byebug"

# # 25%
# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def sort_colors(nums)
#     nums.sort!
# end

# 75%
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  temp = nums.dup
  nums.delete(0)
  nums.delete(2)
  temp.each do |t|
    if t == 0
      nums.unshift(t)
    elsif t == 2
      nums << t
    end
  end
end


#
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  m = nums.count(0)
  n = nums.count(2)
  nums.delete(0)
  nums.delete(2)
  for i in 0..m-1 do
    nums.unshift(0)
  end
  for j in 0..n-1 do
    nums << 2
  end
end
