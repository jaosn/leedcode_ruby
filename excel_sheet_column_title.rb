
require "pry-byebug"

# Given a positive integer, return its corresponding column title as appear in an Excel sheet.
#
# For example:
#
#     1 -> A
#     2 -> B
#     3 -> C
#     ...
#     26 -> Z
#     27 -> AA
#     28 -> AB

# 50 %
# @param {Integer} n
# @return {String}
def convert_to_title(n)
  res = ""
  while n > 0
    rmd = n % 26
    res = ("A".ord + (n-1) % 26).chr + res
    if rmd == 0
      n = (n-1) / 26
    else
      n /= 26
    end
  end
  return res
end

puts convert_to_title(52)
