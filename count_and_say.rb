require 'pry-byebug'
# 30%
# # @param {Integer} n
# # @return {String}
# def count_and_say(n)
#   if n <= 1
#     return "1"
#   else
#     return construct(n)
#   end
# end
#
# def construct(n)
#   str = "1"
#   i = 1
#   while i <= n-1 do
#     array = to_array(str)
#     temp = ""
#     array.each do |s|
#       temp += s.length.to_s+s[0]
#     end
#     str = temp
#     i += 1
#   end
#   return str
# end
#
# def to_array(str)
#   result = []
#   n = 0
#   temp = 0
#   while n <= str.length-1 do
#     if str[n] == str[n+1]
#       n += 1
#     else
#       result << str[temp..n]
#       temp = n+1
#       n+=1
#     end
#   end
#   return result
# end
#
#
# sample = "2211"
# temp = to_array(sample)
# #binding.pry
# puts construct(5)

# 66%
# @param {Integer} n
# @return {String}
def count_and_say(n)
  if n <= 1
    return "1"
  else
    return construct(n)
  end
end

def construct(n)
  str = "1"
  i = 1
  while i <= n-1 do
    array = to_array(str)
    temp = ""
    array.each do |s|
      temp += s
    end
    str = temp
    i += 1
  end
  return str
end

def to_array(str)
  result = []
  n = 0
  temp = 0
  while n <= str.length-1 do
    if str[n] == str[n+1]
      n += 1
    else
      result << str[temp..n].length.to_s + str[temp]
      temp = n+1
      n+=1
    end
  end
  return result
end


sample = "21"
temp = to_array(sample)
#binding.pry
puts construct(4)
