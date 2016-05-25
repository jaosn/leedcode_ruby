# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  if s == p
    true
  elsif p.include?("*") || p.include?(".")
    recur = find_index(str)
  else
    false
  end
end

def single?(s)
  c = s[0]
  if s.count(c) == s.length then true else false end
end

def find_index(str)
   (0 ... str.length).find_all { |i| str[i,1] == '*' }
end
