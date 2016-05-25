# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  if nums.include?(target)
    indx = nums.index(target)
    count = 0
    while nums[indx+count] == target
      count +=1
    end
    [indx,indx+count-1]
  else
    [-1,-1]
  end
end


a = [0,1,2,3,3,3,3,4,5]
t = 3
puts search_range(a,t)
