require 'pry-byebug'


# @param {String} s
# @return {String}
def longest_palindrome(s)
  result = ""

  if s.length == 0 || s.length == 1
    return s
  elsif s == nil
    return nil
  else
    return find_all(s)
  end
end

def find_all(s)
  temp = ""
  for n in 0..s.length-1 do
    temp1 = find_odd_pal(n,s)
    temp2 = find_even_pal(n,s)
    if temp1.length != 1 && temp1.length > temp.length
      temp = temp1
    end
    if temp2.length > 2
      if temp2.length > temp.length then temp = temp2 end
    elsif temp2.length == 2 && temp2[0] == temp2[1]
      if temp2.length > temp.length then temp = temp2 end
    end
  end
  return temp
end

def find_odd_pal(n,s)
  pre = n
  nxt = n
  for i in 0..n do
    pre -= 1
    nxt += 1
    if s[pre] != s[nxt] || edge?(pre+1,s) || edge?(nxt-1,s)
      break
    end
  end
  return s[pre+1..nxt-1]
end

def find_even_pal(n,s)
  pre = n
  nxt = n+1
  for i in 0..n do
    if s[pre] != s[nxt] || edge?(pre,s) || edge?(nxt,s)
      break
    else
      pre -= 1
      nxt += 1
    end
  end
  return s[pre..nxt]
end

def edge?(n,s)
  if n == 0 || n == s.length-1 then true else false end
end


sample = "aaaabaa"
#result = find_all(sample)
#binding.pry
#result = find_odd_pal(4,sample)
result = longest_palindrome(sample)
puts result

puts "++++"
#puts find_even_pal(4,sample)
