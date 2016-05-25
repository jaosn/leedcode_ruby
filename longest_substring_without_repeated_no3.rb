require "pry-byebug"
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  if s.length == 0
    return 0
  elsif s.length == 1
    return 1
  else
    temp = ""
    for n in 0..s.length-1 do
      start = ""
      while unique_characters(start) && n <= s.length-1 && letter?(s[n]) do
        start += s[n]
        n+=1
      end
      if start.length-1 > temp.length
        temp = start
      end
    end
    #binding.pry
    return temp.length - 1
  end
end

def unique_characters(s)
  (s.downcase !~ /([a-z]).*\1/)
  #binding.pry
end

def letter?(char)
  re = char=~ /[[:alpha:]]/
  if re != nil
    return true
  else
    return false
  end
end

#result = length_of_longest_substring(sample)
#binding.pry
#puts result

puts unique_characters(sample)
