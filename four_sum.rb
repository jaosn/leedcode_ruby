require 'pry-byebug'

####
#### time inefficiency
####
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer[][]}
# def four_sum(nums, target)
#   if nums.length <= 3
#     []
#   else
#     result = []
#     nums = nums.sort
#     if nums[0] > target
#       return result
#     end
#     combs = nums.combination(4).to_a.uniq {|c| if sum_a(c) == target then result << c end}
#     return result
#   end
# end
#
# def sum_a(a)
#   a.inject(0){|sum,x| sum + x }
# end
#
# result = four_sum([1,2,3,4,-1,-3,-6,-5,7,5,6],5)
# puts result.length


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  if nums.length <= 3
    []
  else
    result = []
    nums = nums.sort
    #puts "#{nums}"
    for i in 0..nums.length-4 do
      for j in i+1..nums.length-3 do
        n = j + 1
        m = nums.length - 1
        while n < m
          sum = nums[i]+nums[j]+nums[n]+nums[m]
          #temp = [nums[i],nums[j],nums[n],nums[m]]
          #puts "#{temp}"
          if sum == target
            temp = [nums[i],nums[j],nums[n],nums[m]]
            if !result.include?(temp)
              result << [nums[i],nums[j],nums[n],nums[m]]
            end
            n += 1
          elsif sum < target
            n += 1
          else
            m -= 1
          end
        end
      end
    end
    return result
  end
end
result = four_sum([1,-2,-5,-4,-3,3,3,5],-11)
binding.pry
puts "yes"
