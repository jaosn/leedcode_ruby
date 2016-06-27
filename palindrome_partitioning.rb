
require "pry-byebug"

# Given a string s, partition s such that every substring of the partition is a palindrome.
#
# Return all possible palindrome partitioning of s.
#
# For example, given s = "aab",
# Return
#
# [
#   ["aa","b"],
#   ["a","a","b"]
# ]

# @param {String} s
# @return {String[][]}
def partition(s)
  if s.length == 0
    return [[]]
  elsif s.length == 1
    return [[s]]
  else
    res = []
    s = s.chars
    res << s
    for i in 2..s.length do
      s.each_cons(i).to_a.each do |e|
        temp = []
        str = e.join
        if is_palindrome(str)
          temp << e
        end
      end
      res << temp
    end
    binding.pry
    return res
  end
end

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
partition("aab")
