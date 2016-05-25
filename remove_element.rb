binding.pry

####
#### beats 73.08%
####
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.delete(val)
    return nums.length
end
