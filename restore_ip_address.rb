
require "pry-byebug"

# Given a string containing only digits, restore it by returning all possible valid IP address combinations.
#
# For example:
# Given "25525511135",
#
# return ["255.255.11.135", "255.255.111.35"]. (Order does not matter)

# max length 12, min 4

# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
  if s.length < 4 || s.length > 12
    []
  else
    return helper(s)
  end
end

def helper(s)
  res = []
  len = s.length
  # puts len
  # binding.pry
  for a in 1..3 do
    if len - a >= 3 && len-a <= 9 && s[0..a-1].to_i <= 255 && s[0..a-1] != nil && s[0..a-1] != ""
      if s[0..a-1].to_i<= 255 && check?(s[0..a-1])
        for b in 1..3 do
          # if s[a..a+b-1] == "10"
          #   binding.pry
          # end
          if len - a - b >= 2 && len-a-b <= 6 && s[a..a+b-1] != nil && s[a..a+b-1] != ""
            if s[a..a+b-1].to_i <= 255 && check?(s[a..a+b-1])
              for c in 1..3 do
                if len - a - b -c >= 1 && len-a-b-c <= 3 && s[a+b..a+b+c-1] != nil && s[a+b..a+b+c-1] != ""
                  if s[a+b..a+b+c-1].to_i <= 255 && check?(s[a+b..a+b+c-1])
                    # puts "#{a} #{b} #{c} #{len-a-b-c}"
                    sa = s[0..a-1]
                    sb = s[a..a+b-1]
                    sc = s[a+b..a+b+c-1]
                    sd = s[a+b+c..len-1]
                    # binding.pry
                    if sd != nil && sd != ""
                      if sd.to_i <= 255 && check?(sd)
                        val = sa + "." + sb + "." + sc + "." + sd
                        # puts val
                        # puts "++++++++"
                        res << val
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return res
end

def check?(s)
  if s.length >= 2
    if s[0] == "0"
      return false
    else
      return true
    end
  else
    return true
  end
end

# sample = "25525511135"
sample = "01100"
r = helper(sample)
# binding.pry
puts r
