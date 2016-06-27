
require "pry-byebug"

# Given a pattern and a string str, find if str follows the same pattern.
#
# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
#
# Examples:
# pattern = "abba", str = "dog cat cat dog" should return true.
# pattern = "abba", str = "dog cat cat fish" should return false.
# pattern = "aaaa", str = "dog cat cat dog" should return false.
# pattern = "abba", str = "dog dog dog dog" should return false.

# 60 %
# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  if pattern.length == 0 then return false end
  ph, sh = {}, {}
  for i in 0..pattern.length-1 do
    if !ph.key?(pattern[i])
      ph[pattern[i]] = [i]
    else
      ph[pattern[i]] << i
    end
  end
  temp = str.split(" ")
  temp.each_with_index do |t,i|
    if !sh.key?(t)
      sh[t] = [i]
    else
      sh[t] << i
    end
  end
  if ph.values.sort == sh.values.sort then return true else return false end
end

pattern = "abba"
str = "dog cat cat dog"
puts word_pattern(pattern,str)
