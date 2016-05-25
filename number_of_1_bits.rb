
# Write a function that takes an unsigned integer and
# returns the number of ’1' bits it has (also known as the Hamming weight).
#
# For example, the 32-bit integer ’11' has binary representation 00000000000000000000000000001011,
# so the function should return 3.


# 84.87%
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  s = n.to_s(2)
  for i in 0..s.length-1 do
    if s[i] == "1" then count += 1 end
  end
  return count
end

puts hamming_weight(11)
