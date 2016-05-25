
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  if nums.include?(target)
    nums.index(target)
  else
    -1
  end
end
