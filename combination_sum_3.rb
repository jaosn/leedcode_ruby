
require "pry-byebug"

# Find all possible combinations of k numbers that add up to a number n,
#   given that only numbers from 1 to 9 can be used and each combination should be a unique set of numbers.
#
# Example 1:
#
# Input: k = 3, n = 7
#
# Output:
#
# [[1,2,4]]
#
# Example 2:
#
# Input: k = 3, n = 9
#
# Output:
#
# [[1,2,6], [1,3,5], [2,3,4]]


# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
def combination_sum3(k, n)
  res = []
  nums = []
  n <= 9 ? temp = n : temp = 9
  for i in 1..temp do
    nums << i
  end
  nums.combination(k).each do |com|
    sum = 0
    # binding.pry
    com.each {|c| sum += c}
    res << com if sum == n
  end
  # binding.pry
  return res
end

puts combination_sum3(2,18)
