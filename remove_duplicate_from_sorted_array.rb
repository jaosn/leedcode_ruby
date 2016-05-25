require 'pry-byebug'


# # @param {Integer[]} nums
# # @return {Integer}
# def remove_duplicates(nums)
#
#   temp = nums.dup.uniq
#   temp.each do |s|
#     nums.delete(s)
#     nums << s
#   end
#   nums = nums.sort
#   return nums.length
# end
#
# remove_duplicates([1,2,2,2,3,4])


# # @param {Integer[]} nums
# # @return {Integer}
# def remove_duplicates(nums)
#
#   temp = nums.uniq
#   temp.each do |s|
#     indx = nums.index(s)
#     indx += 1
#     #binding.pry
#     while nums[indx] == s
#       nums.delete_at(indx)
#     end
#   end
#   return nums.length
# end
#
# remove_duplicates([1,1,2,2,2,3,3,3,4,4,5,6,7,7,7,8])


# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)

  if nums == nums.uniq
    nums.length
  else
    nums.uniq!.length
  end

end

remove_duplicates([1,1,2,2,2,3,3,3,4,4,5,6,7,7,7,8])


####
#### beats 77.36%
####
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.uniq!
  return nums.length
end

remove_duplicates([1,1,2,2,2,3,3,3,4,4,5,6,7,7,7,8])
