
require "pry-byebug"

# # time exceed limit
# # @param {Integer[]} nums
# # @return {Integer}
# def max_sub_array(nums)
#   if nums.length == 0
#     return -2147483648
#   elsif nums.length == 1
#     return nums[0]
#   else
#     max = 0
#     for i in 0..nums.length-1 do
#       for n in i..nums.length-1 do
#         temp = sum(nums[i..n])
#         if temp >= max then max = temp end
#       end
#     end
#     return max
#   end
# end
#
# def sum(array)
#   array.inject(0){|sum,x| sum + x }
# end
#
# sample = [-2,1,-3,4,-1,2,1,-5,4]
# t = max_sub_array(sample)
# binding.pry
# puts "t"


# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  if nums.length == 0
    return -2147483648
  elsif nums.length == 1
    return nums[0]
  else
    for i in 1..nums.length-1 do
      if nums[i-1] > 0
        nums[i] += nums[i-1]
      end
    end
    return nums.max
  end
end

sample = [-2,1,-3,4,-1,2,1,-5,4]
t = max_sub_array(sample)
binding.pry
puts "t"
