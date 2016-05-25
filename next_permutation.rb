

# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def next_permutation(nums)
#   if nums.length == 1
#     nums
#   else
#     current = convert(nums)
#     dec = []
#     nums.permutation(nums.length).each do |s|
#       dec << convert(s)
#     end
#     dec.sort!
#     ind = dec.index(current)
#     if current == dec.last
#       result = dec.first
#     else
#       result = dec[ind+1]
#     end
#     return de_convert(result)
#   end
# end
#
# def convert(a)
#   sum = 0
#   a.each_with_index {|d,i| sum += d*10**(a.length-i-1)}
#   return sum
# end
#
# def de_convert(num)
#   num.to_s.split("")
# end
#
# #nums = [6,5,4,3,2,1]
# nums =[2,2,3,4,2,3,1,1,2]
# puts next_permutation(nums)



# [2,3,2,5,4]
#
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  if nums.length == 1
    nums
  else
    au = nums.uniq.sort
    as = nums.sort
    ar = as.reverse
    if ar == nums
      as
    else
      if nums[nums.length-2] < nums[nums.length-1]
        nums[nums.length-1],nums[nums.length-2]=nums[nums.length-2],nums[nums.length-1]
      else
        for i in 0..nums.length-3 do
          n = nums.length-3-i
          if !max?(nums[n..nums.length-1])
            if nums[n]>=nums[n+2]
              nums[n], nums[n+1] = nums[n+1],nums[n]
              break
            else
              if nums[n] <= nums.last
                nums[n],nums[nums.length-1] = nums[nums.length-1],nums[n]
                nums[n+1..nums.length-1]=nums[n+1..nums.length-1].sort
                break
              else
                for i in 0..nums.length-1-n do
                  j = length-1-i
                  if nums[n] <= nums[j]
                    nums[n],nums[j] = nums[j],nums[i]
                    nums[n+1..nums.length-1]=nums[n+1..nums.length-1].sort
                    break
                  end
                end
              end
            end
          end
        end
      end
    end
    return nums
  end
end

def max?(a)
  if a == a.sort.reverse then true else false end
end

nums = [1,2,3,5,4]
puts next_permutation(nums)
