require 'pry-byebug'

# # works but time ineffcient
# # @param {String} s
# # @return {String}
# def longest_palindrome(s)
#   return s if s.length <= 1
#   l,r = 0,0
#   for i in 0..s.length-1 do
#     temp1 = helper(s,i,i)
#     temp2 = helper(s,i,i+1)
#
#     temp = [temp1,temp2].max
#     if temp > r-l
#       if temp % 2 == 0
#         l = i - temp / 2 + 1
#         r = i + temp / 2
#       else
#         l = i - temp / 2
#         r = i + temp /2
#       end
#     end
#   end
#   return s[l..r]
# end
#
# def helper(s,left,right)
#   while s[left] == s[right] && left >= 0 && right <= s.length-1
#     left -= 1
#     right += 1
#   end
#   return right - left - 1
# end

# works but time ineffcient
# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length <= 1
  
end

def helper(s,res,i)
  return s[i] if i == s.length-1
  if s[i] == s[i+1]
    l,r = i,i+1
  else
    l,r = i,i
  end
  while s[l] = s[r] && l >= 0 && r <= s.length-1
    l -= 1
    r += 1
  end
  return s[l..r]
end

sample = "aaaa"
#result = find_all(sample)
#binding.pry
#result = find_odd_pal(4,sample)
result = longest_palindrome(sample)
puts result

# puts helper(sample,4,4)


# puts "++++"
#puts find_even_pal(4,sample)
