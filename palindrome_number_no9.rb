
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  if x > 0
    s = x.to_s
  else
    s = x.abs.to_s
  end

  if x.abs <= 9
    return true
  else
    spliter = s.length / 2
    if s.length % 2 == 0
      if s[0..spliter-1].reverse! == s[spliter..s.length-1]
        return true
      else
        return false
      end
    else
      if s[0..spliter-1].reverse! == s[spliter+2..s.length-1]
        return true
      else
        return false
      end
    end
  end

end



def is_palindrome(x)
  if x >= 0
    s = x.to_s
    if x <= 9
      return true
    else
      spliter = s.length / 2
      if s.length % 2 == 0
        if s[0..spliter-1].reverse! == s[spliter..s.length-1]
          return true
        else
          return false
        end
      else
        if s[0..spliter-1].reverse! == s[spliter+2..s.length-1]
          return true
        else
          return false
        end
      end
    end
  else
    return false
  end
end
