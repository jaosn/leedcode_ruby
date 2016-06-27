
require "pry-byebug"

# Write a function that takes a string as input and reverse only the vowels of a string.
#
# Example 1:
# Given s = "hello", return "holle".
#
# Example 2:
# Given s = "leetcode", return "leotcede".

# @param {String} s
# @return {String}
def reverse_vowels(s)
  indx, char = find_index(s)
  indx.each_with_index do |id,i|
    s[id] = char[char.length-1-i]
  end
  return s
end

def find_index(s)
  v = ["a","e","i","o","u","A","E","I","O","U"]
  r = []
  rr = []
  for i in 0..s.length-1 do
    if v.include?(s[i])
      r << i
      rr << s[i]
    end
  end
  return r,rr
end

puts reverse_vowels("sample")
