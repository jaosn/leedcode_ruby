
require 'pry-byebug'

# # not working
# # @param {Integer[]} nums
# # @return {Boolean}
# def can_jump(nums)
#   if nums.length <= 1
#     true
#   elsif nums[0] == 0
#     false
#   else
#     helper(nums,nums[0],0)
#   end
# end
#
# def helper(nums,jump,position)
#   for n in position+1..position+jump do
#     if n + nums[n] >= nums.length-1
#       return true
#     else
#       helper(nums,nums[n],n)
#     end
#   end
#   return false
# end
#
# sample = [1,2,2,6,3,6,1,8,9,4,7,6,5,6,8,2,6,1,3,6,6,6,3,2,4,9,4,5,9,8,2,2,1,6,1,6,2,2,6,1,8,6,8,3,2,8,5,8,0,1,4,8,7,9,0,3,9,4,8,0,2,2,5,5,8,6,3,1,0,2,4,9,8,4,4,2,3,2,2,5,5,9,3,2,8,5,8,9,1,6,2,5,9,9,3,9,7,6,0,7,8,7,8,8,3,5,0]
# s = can_jump(sample)
# puts s


# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  if nums.length <= 1
    true
  elsif nums[0] == 0
    false
  else
  end
end

def helper(nums,index)

end

sample = [2,2,1,1,4]
s = can_jump(sample)
puts s
