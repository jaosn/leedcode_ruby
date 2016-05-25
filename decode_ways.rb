
require "pry-byebug"

# A message containing letters from A-Z is being encoded to numbers using the following mapping:
#
# 'A' -> 1
# 'B' -> 2
# ...
# 'Z' -> 26
# Given an encoded message containing digits, determine the total number of ways to decode it.
#
# For example,
# Given encoded message "12", it could be decoded as "AB" (1 2) or "L" (12).
#
# The number of ways decoding "12" is 2.

# @param {String} s
# @return {Integer}
def num_decodings(s)
  if s.length == 0
    return 0
  elsif s.length == 1
    if s.to_i == 0 then return 0 else return 1 end
  elsif s.length == 2
    if s.to_i <= 26 then return 2 else return 1 end
  else
    hash = generate_hash
    r = helper(hash,s,[])
    binding.pry
  end
end

def generate_hash()
  hash = {}
  count = 1
  ('A'..'Z').each do |a|
    hash[a] = count.to_s
    count += 1
  end
  return hash
end

def helper(hash,rest,res)
  if rest.length <=1
    return res
  else
    if res.length == 0
      if one_valid?(rest)
        res << rest[0]
        helper(hash,rest[1..rest.length-1],res)
      end
      if two_valid?(rest,hash)
        res << rest[0..1]
        helper(hash,rest[2..rest.length-1],res)
      end
    else
      temp = []
      if one_valid?(rest)
        for i in 0..res.length-1 do
          temp << res[i] +","+ rest[0]
        end
        helper(hash,rest[1..rest.length-1],temp)
      end
      if two_valid?(rest,hash)
        for i in 0..res.length-1 do
          temp << res[i] +","+ rest[0..1]
        end
        helper(hash,rest[2..rest.length-1],temp)
      end
    end
  end
end

def one_valid?(rest)
  if rest[0] == "0" || rest[1] == "0"
    return false
  else
    return true
  end
end

def two_valid?(rest,hash)
  if hash.has_value?(rest[0..1]) && rest[2] != "0"
    return true
  else
    return false
  end
end

s = "1112"
# s = "1212"
r = num_decodings(s)
