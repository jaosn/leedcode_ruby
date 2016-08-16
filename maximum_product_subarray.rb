
require "pry-byebug"

# Find the contiguous subarray within an array (containing at least one number) which has the largest product.
#
# For example, given the array [2,3,-2,4],
# the contiguous subarray [2,3] has the largest product = 6.

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  if nums.length == 0
    return 0
  elsif nums.length == 1
    return nums.last
  else
    res = nums.max
    for i in 1..nums.length do
      for j in 0..nums.length-1-i do
        current = nums[j..j+i]
        # puts current.join(",")
        if contiguous?(current)
          temp = current.inject(1){|prod,x| prod * x }
          if temp >= res
            res = temp
          end
        end
        # puts res
      end
    end
    return res
  end
end

def contiguous?(a)
  for i in 0..a.length-2 do
    if a[i+1].abs - a[i].abs > 1
      return false
    end
  end
  return true
end


max_product([1,-2,3,-4])
