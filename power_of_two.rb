
# Given an integer, write a function to determine if it is a power of two.

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  if n <1
    return false
  else
    return (0==((n-1)&n))
  end
end
