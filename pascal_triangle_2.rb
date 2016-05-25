
require "pry-byebug"

# Given an index k, return the kth row of the Pascal's triangle.
#
# For example, given k = 3,
# Return [1,3,3,1].
# Note:
# Could you optimize your algorithm to use only O(k) extra space?

# 28.57 %
# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  if row_index == 0
    return [1]
  elsif row_index == 1
    return [1,1]
  else
    return construct_row(row_index)
  end
end

def construct_row(n)
  original = [1,1] # 2
  count = 1
  while count <= n
    count += 1
    temp = [1]
    for i in 1..count-2 do
      temp << (original[i]+original[i-1])
    end
    temp << 1
    original = temp
  end
  return original
end

puts get_row(3)
