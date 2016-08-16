
require "pry-byebug"

# Given a range [m, n] where 0 <= m <= n <= 2147483647,
#   return the bitwise AND of all numbers in this range, inclusive.
#
# For example, given the range [5, 7], you should return 4.

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def range_bitwise_and(m, n)
  return m if m == n || m == 0
  len1 = m.to_s(2).length
  len2 = n.to_s(2).length
  return 0 if len2 > len1
  base = m
  for i in m+1..n do
    base = base & i
    return 0 if base == 0
  end
  return base
end

puts range_bitwise_and(600000000,2147483647)
