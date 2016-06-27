
require "pry-byebug"

# A message containing letters from A-Z is being encoded to numbers using the following mapping:
#
# 'A' -> 1
# 'B' -> 2
# ...
# 'Z' -> 26
# Given an encoded message containing digits, determine the total number of ways to decode it.
#
# For example,
# Given encoded message "12", it could be decoded as "AB" (1 2) or "L" (12).
#
# The number of ways decoding "12" is 2.

# @param {String} s
# @return {Integer}
def num_decodings(s)
  if s.length == 0
    return 0
  elsif s.length == 1
    if s.to_i == 0 then return 0 else return 1 end
  else
    nums = s.chars

  end

end

def generate_hash()
  hash = {}
  count = 1
  ('A'..'Z').each do |a|
    hash[a] = count.to_s
    count += 1
  end
  return hash
end


s = "1112"
# s = "1212"
r = num_decodings(s)
