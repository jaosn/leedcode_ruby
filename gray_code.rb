
require "pry-byebug"

# The gray code is a binary numeral system where two successive values differ in only one bit.
#
# Given a non-negative integer n representing the total number of bits in the code, print the sequence of gray code.
# A gray code sequence must begin with 0.
#
# For example, given n = 2, return [0,1,3,2]. Its gray code sequence is:
#
# 00 - 0
# 01 - 1
# 11 - 3
# 10 - 2
# Note:
# For a given n, a gray code sequence is not uniquely defined.
#
# For example, [0,2,3,1] is also a valid gray code sequence according to the above definition.
#
# For now, the judge is able to judge based on one instance of gray code sequence. Sorry about that.

# 3 - [0,1,3,2,6,7,5,4]
# 4 - [0,1,3,2,6,7,5,4,12,13,15,14,10,11,9,8]
# @param {Integer} n
# @return {Integer[]}
def gray_code(n)
  count = 2 ** n
  res = []
  for i in 0..count-1 do
    temp = ((i) ^ (i >> 1))
    # puts i.to_s(2)
    # puts "#{temp} #{temp.to_s(2)}"
    # puts "++++++++++"
    res << temp
  end
  return res
end

r = gray_code(3)
binding.pry
puts r
