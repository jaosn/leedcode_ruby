
require "pry-byebug"

# Related to question Excel Sheet Column Title
#
# Given a column title as appear in an Excel sheet, return its corresponding column number.
#
# For example:
#
#     A -> 1
#     B -> 2
#     C -> 3
#     ...
#     Z -> 26
#     AA -> 27
#     AB -> 28

# # accept but bad
# # @param {String} s
# # @return {Integer}
# def title_to_number(s)
#   if s.length == 0
#     return 0
#   else
#     hash = generate()
#     sum = 0
#     for i in 0..s.length-1 do
#       d =  s.length-1-i
#       sum +=hash[s[d]] * (26**i)
#     end
#     return sum
#   end
# end
#
# def generate()
#   hash = {}
#   count = 1
#   ("A".."Z").each do |c|
#     hash[c] = count
#     count += 1
#   end
#   return hash
# end
#
# title_to_number("BA")

# accept 87.5%
# @param {String} s
# @return {Integer}
def title_to_number(s)
  if s.length == 0
    return 0
  else
    apl = ("A".."Z").to_a
    sum = 0
    for i in 0..s.length-1 do
      d =  s.length-1-i
      sum += (apl.index(s[d])+1) * (26**i)
    end
    # binding.pry
    return sum
  end
end

puts title_to_number("BA")
