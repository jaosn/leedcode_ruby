
require "pry-byebug"

# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
#
# For example,
# "A man, a plan, a canal: Panama" is a palindrome.
# "race a car" is not a palindrome.
#
# Note:
# Have you consider that the string might be empty? This is a good question to ask during an interview.
#
# For the purpose of this problem, we define empty string as valid palindrome.

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.tr('^A-Za-z0-9', '').downcase
  if str.length == 0 || str.length == 1 then return true end
  temp = str.length / 2
  if str.length % 2 == 0
    if str[0..temp-1].reverse == str[temp..str.length-1] then return true else return false end
  else
    if str[0..temp-1].reverse == str[temp+1..str.length-1] then return true else return false end
  end
end


s = "A man, a plan, a canal: Panama"
# s = "aa"
puts is_palindrome(s)
