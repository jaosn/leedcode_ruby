

require "pry-byebug"

# # @param {Integer} n
# # @param {Integer} k
# # @return {String}
# def get_permutation(n, k)
#   nums_p = fact(n)
#   if k <= nums_p
#     count = 0
#     create_array(n).permutation.each do |per|
#       count += 1
#       if count == k
#         return per
#       end
#     end
#   else
#     "not exist"
#   end
# end
#
# def create_array(n)
#   temp = []
#   for i in 0..n-1 do
#     temp << i+1
#   end
#   return temp
# end
#
# def fact(n)
#   if n == 0
#     1
#   else
#     n * fact(n-1)
#   end
# end
#
# sample = get_permutation(9,214267)
# # binding.pry
# puts sample


# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_permutation(n, k)
  nums_p = fact(n)
  if k <= nums_p
    array = create_array(n)
    single = nums_p / n
    first = k / single
    reminder = k % single
    if reminder > 0
      array.delete(first+1)
      first_elem = first+1
    else
      array.delete(first)
      reminder = single
      first_elem = first
    end
    count = 0
    array.permutation.each do |per|
      count += 1
      if count == reminder
        return per.unshift(first_elem).join
      end
    end
  else
    "not exist"
  end
end

def create_array(n)
  temp = []
  for i in 0..n-1 do
    temp << i+1
  end
  return temp
end

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

sample = get_permutation(9,214267)
# 635749128
binding.pry
puts sample
