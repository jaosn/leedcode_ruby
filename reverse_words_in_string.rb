

# Given an input string, reverse the string word by word.
#
# For example,
# Given s = "the sky is blue",
# return "blue is sky the".

def reverse_words(s)
  strs = s.split(" ")
  if strs.length == 0
    return ""
  elsif strs.length == 1
    return s
  else
    strs.reverse!
    return strs.join(" ")
  end
end

s = "my name is hanzhenyu "
puts reverse_words(s)
