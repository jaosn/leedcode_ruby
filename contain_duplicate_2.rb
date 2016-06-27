
require "pry-byebug"

# Given an array of integers and an integer k,
#   find out whether there are two distinct indices i and j in the array
#   such that nums[i] = nums[j] and the difference between i and j is at most k.

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  if nums.uniq == nums then return false end
  nums.uniq.each do |e|
    if nums.count(e) > 1
      indx = nums.each_index.select{|i| nums[i] == e}
      indx.each_cons(2) {|c| if c[1]-c[0] <= k then return true end}
    end
  end
  return false
end

puts contains_nearby_duplicate([1,2,3,4,5,6,2,3],5)
