
require "pry-byebug"

# Find the total area covered by two rectilinear rectangles in a 2D plane.
#
# Each rectangle is defined by its bottom left corner and top right corner as shown in the figure.
#
# Rectangle Area
# Assume that the total area is never beyond the maximum possible value of int.


# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
  rec1 = generate(a,b,c,d)
  rec2 = generate(e,f,g,h)
  temp = rec1 & rec2
  # binding.pry
  if temp == [] || temp.length <= 2
    duplicate = 0
  else
    temp.sort!
    duplicate = (temp.last[0]-temp.first[0]) * (temp.last[1]-temp.first[1])
  end
  return (c-a)*(d-b)+(g-e)*(h-f)-duplicate
end

def generate(a,b,c,d)
  ac_max, ac_min = [a,c].max, [a,c].min
  bd_max, bd_min = [b,d].max, [b,d].min
  res = []
  for i in ac_min..ac_max do
    for j in bd_min..bd_max do
      res << [i,j]
    end
  end
  return res
end

# a,b,c,d,e,f,g,h = -3, 0, 3, 4, 0, -1, 9, 2
# compute_area(a,b,c,d,e,f,g,h)

a,b,c,d,e,f,g,h = 0,0,0,0,-1,-1,1,1
compute_area(a,b,c,d,e,f,g,h)
