# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  max = 2147483647
  min = -2147483648
  isPositive = (dividend > 0 && divisor > 0) || (dividend < 0 && divisor < 0)
  dd = dividend.abs
  dr = divisor.abs
  return 0 if dd < dr
  return dd if dr == 1

  count = 1
  temp = dr
  while dd >= temp + temp
    temp = temp << 1
    count = count << 1
    puts "#{temp} #{count}"
  end
  return [count-1,max].min if isPositive
  return [-(count-1),min].max if ! isPositive
end

puts divide(100,2)

# def divide(divident, divisor)
#   res=go_divide(~divident+1, ~divisor+1) if divident<0 && divisor < 0
#   res=(~go_divide(divident, ~divisor+1)) + 1 if divident>=0 && divisor<0
#   res=(~go_divide(~divident+1, divisor)) + 1 if divident<0 && divisor>0
#   res=go_divide(divident, divisor) if divident>=0 && divisor>0
#   (-2147483648..2147483647).include?(res) ? res : 2147483647
# end
#
# def go_divide(divident, divisor)
#   return 0 if divident < divisor
#   return divident if divisor==1
#   res = 1
#   cur = divsor
#   #res, cur=1, divisor
#   while cur+cur < divident
#     res=res<<1
#     cur=cur<<1
#   end
#   res + divide(divident - cur, divisor)
# end
#
# puts divide(10,-4)
