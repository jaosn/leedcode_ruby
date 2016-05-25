require 'pry-byebug'

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  hash = {'2'=>['a','b','c'],'3'=>['d','e','f'],'4'=>['g','h','i'],'5'=>['j','k','l'],
    '6'=>['m','n','o'],'7'=>['p','q','r','s'],'8'=>['t','u','v'],'9'=>['w','x','y','z']}
  if !valid_num?(digits)
    []
  elsif digits.length == 1
    hash[digits[0]]
  else
    spl = digits.split("")
    result = hash[spl[0]]
    for n in 1..spl.length-1 do
      #binding.pry
      temp = result.product(hash[spl[n]])
      temp.each_with_index {|s,i| temp[i]=convt_i(s)}
      result = temp
    end
    return result
  end
end

def valid_num?(s)
  /^[2-9]{1,}$/ === s
end

def convt_i(ar)
  r = ""
  ar.each {|n| r += n}
  return r
end

result1 = letter_combinations("2")
puts result1
puts "+++++++"
result2 = letter_combinations("243")
puts result2
puts "+++++++"
