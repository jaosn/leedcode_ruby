
require 'pry-byebug'

# # @param {String} s
# # @return {Integer}
# def longest_valid_parentheses(s)
#   symbols = {"(" => ")"}
#   if s.length == 0
#     0
#   else
#     result = 0
#     len = s.length-1
#     for n in 0..len do
#       for m in n+1..len do
#         stack = []
#         tag = true
#         str = s[n..m]
#         str.split("").each do |c|
#           if symbols.key?(c) then stack << c end
#           if symbols.key(c) && symbols.key(c) != stack.pop
#             tag = false
#           end
#         end
#         # puts "string is #{str} and stack is #{stack}"
#         # puts "++++++"
#         if stack.empty? && tag == true && m-n+1 > result
#           result = m-n+1
#         end
#         if result > len-n
#           break
#         end
#       end
#     end
#     return result
#   end
# end
#
# r = longest_valid_parentheses(")(())")
# puts r


# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  symbols = {"(" => ")"}
  if s.length == 0
    0
  else
    res = 0
    temp = 0
    s1 = []
    data = []
    for n in 0..s.length-1 do
      if s[n] == "("
        s1 << n
      else
        if !s1.empty?
          data[n]=1
          data[s1.pop]=1
        end
      end
    end

    data.each do |t|
      if t == 1
        temp += 1
      else
        res = [temp,res].max
        temp = 0
      end
    end
    return [temp,res].max
  end
end

r = longest_valid_parentheses(")(())")

puts r
