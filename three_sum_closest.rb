require "pry-byebug"


###### Version1
###### Works, but time inefficiency
######
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer}
# def three_sum_closest(nums, target)
#   if nums.length <= 2
#     nil
#   elsif nums.length == 3
#     return nums[0] + nums[1] + nums[2]
#   else
#     char = nums.uniq.sort
#     temp  = char.dup
#     result = 0
#     difference = (2**(0.size * 8 -2) -1)
#     char.each do |single|
#       if nums.count(single) == 2 then temp << single end
#       if nums.count(single) >= 3 then 2.times {|n| temp << single } end
#     end
#     #binding.pry
#     temp.combination(3).each do |comb|
#       sum = comb[0] + comb[1] +comb[2]
#       dif = target - sum
#       if dif.abs < difference
#         difference = dif
#         result = sum
#       end
#     end
#     return result
#   end
# end


###### Version2
###### Works, but time inefficiency
######
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer}
# def three_sum_closest(nums, target)
#   if nums.length <= 2
#     nil
#   elsif nums.length == 3
#     nums[0] + nums[1] + nums[2]
#   else
#     char = nums.uniq.sort
#     temp  = char.dup
#     char.each do |single|
#       if nums.count(single) == 2 then temp << single end
#       if nums.count(single) >= 3 then 2.times {|n| temp << single } end
#     end
#     result = (2**(0.size * 8 -2) -1)
#     temp.combination(2).each do |comb|
#       rest = temp.dup
#       comb.each {|c| rest.delete_at(rest.index(c) || rest.length)}
#       rest.each do |n|
#         dif1 = comb[0] + comb[1] + n - target
#         dif2 = result - target
#         if dif1.abs <= dif2.abs
#           result = n
#         end
#       end
#     end
#     return
#   end
# end


###### Version3
###### Works, but time inefficiency
######
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer}
# def three_sum_closest(nums, target)
#   if nums.length <= 2
#     nil
#   elsif nums.length == 3
#     nums[0] + nums[1] + nums[2]
#   else
#     char = nums.uniq.sort
#     temp  = char.dup
#     char.each do |single|
#       if nums.count(single) == 2 then temp << single end
#       if nums.count(single) >= 3 then 2.times {|n| temp << single } end
#     end
#     result = (2**(0.size * 8 -2) -1)
#     for n in 0..temp.length-3 do
#       for m in n+1..temp.length-2 do
#         for k in m+1..temp.length-1 do
#           sum = temp[n]+temp[m]+temp[k]
#           if sum.abs < result
#             result = sum.abs
#           end
#         end
#       end
#     end
#     return result
#   end
# end
#
# nums = [96,-52,73,25,-95,-5,74,-72,-81,77,-68,-14,12,-35,75,23,-98,41,-56,1,-69,77,86,63,-78,2,65,-67,46,-23,32,90,-19,32,-63,92,-73,7,-82,-57,41,3,-74,14,-3,73,-16,98,59,-77,61,86,-1,-25,-95,-75,74,-39,81,-100,57,86,0,-40,44,-13,-16,-72,24,-100,10,53,-85,-64,11,50,1,39,51,-60,-95,32,-4,-27,32,-79,66,93,56,16,52,-67,67,-54,83,79,53,-54,-81,-51,73,-21,94,-89,2,-82,-2,-74,-52,-53,7,11,-75,-84,78,-100,-31,89,1,-40,-14,24,69,18,-57,21,35,-92,-30,63,76,-24,84,64,-22,-20,57,85,40,-79,-7,95,99,-85,-93,3,76,-41,-73,76]
# target = -271
# puts three_sum_closest(nums,target)



###### Version4
###### Works, but time inefficiency
######
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer}
# def three_sum_closest(nums, target)
#   if nums.length <= 2
#     nil
#   elsif nums.length == 3
#     nums[0] + nums[1] + nums[2]
#   else
#     result = (2**(0.size * 8 -2) -1)
#     for n in 0..nums.length-3 do
#       for m in n+1..nums.length-2 do
#         for k in m+1..nums.length-1 do
#           sum = nums[n]+nums[m]+nums[k]
#           if sum < result
#             result = sum
#           end
#           if result == target
#             return result
#           end
#         end
#       end
#     end
#     return result
#   end
# end


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  if nums.length <= 2
    nil
  elsif nums.length == 3
    nums[0] + nums[1] + nums[2]
  else
    nums = nums.sort
    result = (2**(0.size * 8 -2) -1)
    for n in 0..nums.length-2 do
      m = n+1
      k = nums.length-1
      while m < k
        sum = nums[n] + nums[m] + nums[k]
        if sum == target
          return sum
        else
          diff1 = target - sum
          diff2 = target - result
          if diff1.abs < diff2.abs
            result = sum
          end
          if sum > target
            k -= 1
          else
            m += 1
          end
        end
      end
    end
    return result
  end
end
