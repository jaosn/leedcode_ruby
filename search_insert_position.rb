# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  if nums.include?(target)
    nums.index(target)
  else
    if nums.length != 0
      if target < nums[0]
        0
      else
        nums << target
        nums.sort!
        nums.index(target)
      end
    else
      0
    end
  end
end

a = [1,3,4,5,6,7]
t = 2

puts search_insert(a,t)
