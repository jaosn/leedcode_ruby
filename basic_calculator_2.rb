
require "pry-byebug"

# Implement a basic calculator to evaluate a simple expression string.
#
# The expression string contains only non-negative integers, +, -, *, / operators and empty spaces .
#   The integer division should truncate toward zero.
#
# You may assume that the given expression is always valid.
#
# Some examples:
# "3+2*2" = 7
# " 3/2 " = 1
# " 3+5 / 2 " = 5


# @param {String} s
# @return {Integer}
def calculate(s)
  s.gsub!(/\s+/, '')
  for 
end

# def seperate_by(s,opt1,opt2)
#   if s.include?(opt1) || s.include?(opt2)
#     temp = []
#     n = 0
#     for i in 0..s.length-1 do
#       if s[i] == opt1 || s[i] == opt2
#         temp << s[n..i-1]
#         temp << s[i]
#         n = i+1
#       end
#     end
#     temp << s[n..s.length-1]
#     return temp
#   else
#     return s
#   end
# end


s = " 3+5 / 2 -4 * 2 "
calculate(s)
