

# @param {Integer} x
# @return {Integer}
def reverse(x)
  x_abs = x.abs
  if x == 0
    return 0
  elsif x_abs.to_s.length == 1
    return x
  else
    if x > 0
      result = x_abs.to_s.reverse!.to_i
      if result <= 2**31-1
        return result
      else
        return 0
      end
    else
      result = -(x_abs.to_s.reverse!.to_i)
      if result >= -2**31
        return result
      else
        return 0
      end
    end
  end
end
