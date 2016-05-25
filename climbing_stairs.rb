


# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  fib_helper(0,1,1,n)
end

def fib_helper(a,b,i,n)
  if i > n
    b
  else
    fib_helper(b,a+b,i+1,n)
  end
end

s = climb_stairs(10)
puts s
