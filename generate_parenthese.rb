
require 'pry-byebug'

# # @param {Integer} n
# # @return {String[]}
# def generate_parenthesis(n)
#   parenth = []
#   result = []
#   for i in 1..n do
#     parenth << "("
#     parenth << ")"
#   end
#   #binding.pry
#   parenth.permutation(n*2).each do |s|
#     temp = s.join
#     if is_valid(temp)
#       result << temp
#     end
#   end
#   return result.uniq
# end
#
#
#
# def is_valid(s)
#   if !valid_p?(s)
#     false
#   elsif s.length == 0
#     true
#   else
#     stack = []
#     symbols = {"{" => "}", "(" => ")", "[" => "]"}
#     s.split("").each do |c|
#       if symbols.key?(c) then stack << c end
#       if symbols.key(c) && symbols.key(c) != stack.pop then return false end
#     end
#     stack.empty?
#   end
# end
#
# def valid_p?(s)
#   /^[\{\}\[\]\(\)]{0,}$/ === s
# end
#
#
# result = generate_parenthesis(4)
# binding.pry
# puts  "1"


# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  if n == 0
    [""]
  else
  end

end

def helper(current, n, results)

  if current <= n
    helper(current+1, n, results)
  else
    return results
  end

end
