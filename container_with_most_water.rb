
require "pry-byebug"

# Given n non-negative integers a1, a2, ..., an,
#   where each represents a point at coordinate (i, ai).
#   n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0).
#   Find two lines, which together with x-axis forms a container, such that the container contains the most water.
#
# Note: You may not slant the container.

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  res, left, right = 0, 0, height.length-1
  return 0 if height.length <= 1
  return [height[0],height[1]].min if height.length == 2
  while left < right && left >= 0 && right <= height.length-1
    temp = (right-left) * [height[left],height[right]].min
    res = temp if temp > res
    if height[left] <= height[right]
      left += 1
    else
      right -= 1
    end
  end
  return res
end

# h = [1,2,3,5,1,2,3,4,8]
h = [1,2,1]
puts max_area(h)
