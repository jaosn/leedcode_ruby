
require "pry-byebug"

# Given a string s and a dictionary of words dict,
# determine if s can be segmented into a space-separated sequence of one or more dictionary words.
#
# For example, given
# s = "leetcode",
# dict = ["leet", "code"].
#
# Return true because "leetcode" can be segmented as "leet code".

# @param {String} s
# @param {Set<String>} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  if s == nil || s.length == 0
    return false
  else
  end
end

# s = "abcd"
# w = ["a","abc","b","cd"]

# s = "aaaaaaa"
# w = ["aaaa","aa"]

s = "leetcode"
w = ["leet","code"]
puts word_break(s,w)
