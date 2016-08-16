
require 'pry-byebug'

# # @param {Integer} n
# # @return {String[]}


# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  return [] if n == 0
  res = []
  helper(res,"",n,n)
  return res
end

def helper(res,str, l, r)
  res << str if (r == 0)
  helper(res, str + "(", l-1, r) if l > 0
  helper(res,str + ")", l, r-1) if r> l
end

puts generate_parenthesis(3)
