require 'pry-byebug'

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

def find_median_sorted_arrays(nums1, nums2)
    len1 = nums1.length
    len2 = nums2.length
    sum = nums1 + nums2
    sum = sum.sort
    #binding.pry
    if sum.length == 0
      return 0
    elsif sum.length == 1
      return sum[0].to_f
    elsif sum.length % 2 == 1
      return sum[sum.length / 2].to_f
    else
      return (sum[sum.length / 2] + sum[sum.length / 2 - 1]) / 2.0
    end
end

a = [1,2]
b = [1,2]

puts find_median_sorted_arrays(a,b)
