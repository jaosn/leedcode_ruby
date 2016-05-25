
require "pry-byebug"

# 66.67 %
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  if digits.length == 0
    [1]
  else
    restore((transform(digits)+1).to_s)
  end
end

def transform(digits)
  res = ""
  digits.each {|d| res += d.to_s}
  return res.to_i
end

def restore(str)
  res = []
  for i in 0..str.length-1 do
    res << str[i].to_i
  end
  return res
end

sample = [9,9]
t = plus_one(sample)
# binding.pry
puts t
