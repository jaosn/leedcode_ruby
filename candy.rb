
require "pry-byebug"

# There are N children standing in a line. Each child is assigned a rating value.
#
# You are giving candies to these children subjected to the following requirements:
#
# Each child must have at least one candy.
# Children with a higher rating get more candies than their neighbors.
# What is the minimum candies you must give?

# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  if ratings.length == 0
    return 0
  elsif ratings.length == 1
    return 1
  else
    res = [1]
    for i in 1..ratings.length-1 do
      if ratings[i] - ratings[i+1] >= 0

    end
  end
end

r = [1,3,4,5,6,2,2,3,1]
