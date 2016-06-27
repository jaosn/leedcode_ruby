
require "pry-byebug"
require "prime"

#
# Write a program to check whether a given number is an ugly number.
#
# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.
# For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
#
# Note that 1 is typically treated as an ugly number.

# # slow
# # @param {Integer} num
# # @return {Boolean}
# def is_ugly(num)
#   if num <= 0
#     return false
#   elsif num == 1
#     return true
#   else
#     num = divide(num,2)
#     num = divide(num,3)
#     num = divide(num,5)
#     if num == 1
#       return true
#     else
#       return false
#     end
#   end
# end
#
# def divide(a,b)
#   while a % b == 0
#     a = a / b
#   end
#   return a
# end
#
# class Fixnum
#   def prime?
#     ('1' * self) !~ /^1?$|^(11+?)\1+$/
#   end
# end


# slow
# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  temp = [2,3,5]
  if num <= 0
    return false
  elsif num == 1
    return true
  else
    Prime.each(num) do |prime|
      if num % prime == 0 && !temp.include?(prime)
        return false
      end
    end
    return true
  end
end



puts is_ugly(8)
