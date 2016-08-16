
require "pry-byebug"

# Given two integers representing the numerator and denominator of a fraction,
#   return the fraction in string format.
#
# If the fractional part is repeating, enclose the repeating part in parentheses.
#
# For example,
#
# Given numerator = 1, denominator = 2, return "0.5".
# Given numerator = 2, denominator = 1, return "2".
# Given numerator = 2, denominator = 3, return "0.(6)".
# Hint:
#
#   No scary math, just apply elementary math knowledge. Still remember how to perform a long division?
#   Try a long division on 4/9, the repeating part is obvious. Now try 4/333. Do you see a pattern?
#   Be wary of edge cases! List out as many test cases as you can think of and test your code thoroughly.


# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  res = numerator * denominator >= 0 ? "" : "-"
  n,d = numerator.abs, denominator.abs
  res << (n/d).to_s
  n %= d
  return res if n == 0

  res << "."
  check = Hash.new

  while  not n.zero? and check[n].nil?
    check[n] = res.length
    n *= 10
    res << (n/d).to_s
    # puts res
    n %= d
  end
  res.insert(check[n], '(') << ')' if check[n]
  return res
end

# def symbol(n,d)
#   (n > 0 && d < 0) || (n < 0 && d > 0) ? false : true
# end

puts fraction_to_decimal(1,5)
