
require "pry-byebug"

# Given an integer n, return the number of trailing zeroes in n!.
#
# Note: Your solution should be in logarithmic time complexity.

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  count = 0
  while n > 0
    n /= 5
    count += n
  end
  return count
end
