
require "pry-byebug"

# '.' Matches any single character.
# '*' Matches zero or more of the preceding element.
#
# The matching should cover the entire input string (not partial).
#
# The function prototype should be:
# bool isMatch(const char *s, const char *p)
#
# Some examples:
# isMatch("aa","a") → false
# isMatch("aa","aa") → true
# isMatch("aaa","aa") → false
# isMatch("aa", "a*") → true
# isMatch("aa", ".*") → true
# isMatch("ab", ".*") → true
# isMatch("aab", "c*a*b") → true

# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  if include_special?(s)
    if p == ".*"
      return true
    else
      hash = find_index(s)
      if s.include?(".*")

      else
        for i in 0..p.length-1 do
          if i+1 <= p.length-1 && p[i+1] != "*"
            s
          end
        end

      end

    end
  elsif s == p
    return true
  else
    return false
  end
end

def include_special?(s)
  if s.include?(".") | s.include?("*")
    return true
  else
    return false
  end
end

def find_index(s)
  hash = {"dot" => [], "star" =>[]}
  for i in 0..s.length-1 do
    if s[i] == "."
      hash["dot"] << i
    elsif s[i] == "*"
      hash["star"] << i
    end
  end
  return hash
end

class String
  def remove_at(index)
    self[index] = ""
  end
end

puts find_index("aa.bb*c.d*")
