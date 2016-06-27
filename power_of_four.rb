
require 'pry-byebug'

# Given an integer (signed 32 bits), write a function to check whether it is a power of 4.
#
# Example:
# Given num = 16, return true. Given num = 5, return false.
#
# Follow up: Could you solve it without loops/recursion?


# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
  if num < 1 then return false end
  res = Math.log(num,4)
  temp = res.to_i
  # binding.pry
  if res == temp then return true else return false end
end

puts is_power_of_four(-64)
