

# Given an array of integers, find if the array contains any duplicates. 
# Your function should return true if any value appears at least twice in the array,
# and it should return false if every element is distinct.

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    temp = nums.uniq
    if temp.length == nums.length
        return false
    else
        return true
    end

end
