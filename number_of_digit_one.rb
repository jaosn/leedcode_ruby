
require "pry-byebug"

# Given an integer n, count the total number of digit 1 appearing in all non-negative integers
#   less than or equal to n.
#
# For example:
# Given n = 13,
# Return 6, because digit 1 occurred in the following numbers: 1, 10, 11, 12, 13.

# @param {Integer} n
# @return {Integer}
def count_digit_one(n)
  
end

def helper(a,b)
  res = []
  for i in a..b do
    res << i if i.to_s.include?("1")
  end
  return res
end

puts count_digit_one(1112)
