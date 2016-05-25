
require 'pry-byebug'

# Given a triangle, find the minimum path sum from top to bottom.
# Each step you may move to adjacent numbers on the row below.
#
# For example, given the following triangle
# [
#      [2],
#     [3,4],
#    [6,5,7],
#   [4,1,8,3]
# ]


# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)

end

def helper(t)
  res = []
  t.each do |tt|
    if res.length == 0
      res << tt[0]
    else
      temp = []
      for i in 0..tt.length-1 do
        
      end
      binding.pry
    end
  end
end

s =[
     [2],
    [3,4],
   [6,5,7],
  [4,1,8,3]
]
helper(s)
