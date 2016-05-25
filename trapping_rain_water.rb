

require "pry-byebug"


# @param {Integer[]} height
# @return {Integer}
def trap(height)
  if height.length < 3
    return 0
  elsif height.length == 3
    if height[1] < height[0] && height[1] < height[2]
      return [height[0],height[2]].min - height[1]
    else
      return 0
    end
  else
    for i in 0..height.lenght-3 do
      if height[i] > 0
      end
    end
  end
end

def recersive(height, current, sum)

end

def check?(height,current)
  while
end

puts trap([12,23,2])
