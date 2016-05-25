
require "pry-byebug"

# 60.81%
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  ns = num.to_s
  if ns.length <= 1
    num
  else
    while ns.length != 1
      temp = 0
      for n in 0..ns.length-1 do
        temp += ns[n].to_i
      end
      ns = temp.to_s
    end
    return temp.to_i
  end
end

sample = 999
puts add_digits(sample)


# # 17.5%
# # @param {Integer} num
# # @return {Integer}
# def add_digits(num)
#   nums = convert(num)
#   while nums.length != 1
#     sum = sum_a(nums)
#     nums = convert(sum)
#   end
#   return nums[0]
# end
#
# def convert(num)
#   temp = []
#   while num / 10 != 0
#     temp << num % 10
#     num = num / 10
#   end
#   temp << num
#   return temp
# end
#
# def sum_a(nums)
#   res = 0
#   nums.each {|n| res += n}
#   return res
# end
#
# sample = 9
# puts add_digits(sample)
