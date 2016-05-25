
require "pry-byebug"

# Given an array of size n, find the majority element.
# The majority element is the element that appears more than ⌊ n/2 ⌋ times.
#
# You may assume that the array is non-empty and the majority element always exist in the array.

# 74.07%
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = {}
    nums.each do |n|
      if !hash.has_key?(n)
        hash[n] = 1
      else
        hash[n] += 1
      end
    end
    e,n = largest_hash_key(hash)
    return e
end

def largest_hash_key(hash)
  hash.max_by{|k,v| v}
end

s = [1,1,1,2,2,1,3]
r = majority_element(s)
puts r
