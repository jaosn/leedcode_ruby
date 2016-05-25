
require "pry-byebug"

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  if nums.length == 0
    return 1
  elsif nums.max <= 0
    return 1
  else
    nums = nums.uniq
    nums.sort!
    if nums[0] < 0
      nums.each_with_index do |num,i|
        if nums[i] <= 0
          if nums[i+1] > 1
            return 1
          end
        else
          if nums[i] + 1 != nums[i+1]
            return nums[i] + 1
          end
        end
      end
    elsif nums[0] == 0 || nums[0] == 1
      nums.each_with_index do |num,i|
        if nums[i] + 1 != nums[i+1]
          return nums[i] + 1
        end
      end
    else
      return 1
    end
  end
end

puts first_missing_positive([1])
