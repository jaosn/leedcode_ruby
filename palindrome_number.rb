require 'pry-byebug'

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  if x < 0 then false end
  x = x.to_s
  if x.length <= 1
    true
  elsif x.length % 2 == 0
    if x.length == 2
      if x[0] == x[1] then true else false end
    else
      left = x[0..x.length/2-1]
      #binding.pry
      if left.reverse == x[x.length/2..x.length-1] then true else false end
    end
  else
    left = x[0..x.length/2-1]
    if left.reverse == x[x.length/2+1..x.length-1] then true else false end
  end
end

sample =  1001
puts is_palindrome(sample)
