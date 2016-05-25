# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return nums.permutation.to_a
end


# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    return nums.permutation.to_a.uniq
end
