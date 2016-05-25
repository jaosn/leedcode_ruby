require 'pry-byebug'


# # @param {String} s
# # @param {String[]} words
# # @return {Integer[]}
# def find_substring(s, words)
#   if s.length < words.length * words[0].length
#     []
#   else
#     w = []
#     result = []
#     if words.uniq.length == 1
#       pat = conca(words)
#       w << pat
#     else
#       words.permutation(words.length) {|s| w << conca(s)}
#       w.uniq!
#     end
#     w.each do |pa|
#       temp =  s.indices(pa)
#       temp.each {|i| if !result.include?(i) then result << i end}
#     end
#     return result.sort
#   end
# end
#
# class String
#   def indices e
#     start, result = -1, []
#     result << start while start = (self.index e, start + 1)
#     result
#   end
# end
#
# def conca(ar)
#   r = ""
#   ar.each {|s| r+=s}
#   return r
# end
#
# s = find_substring("aaccbbhdjdsccbbaairkdaabbccbbccaa",["aa","bb","cc"])
# #binding.pry
# puts s


# # @param {String} s
# # @param {String[]} words
# # @return {Integer[]}
# def find_substring(s, words)
#   if s.length < words.length * words[0].length
#     []
#   else
#     result = []
#     indx = []
#     words.each do |w|
#       indx << s.indices(w)
#     end
#     chk = indx[0].product(*indx[1..-1]).uniq
#     chk.each do |a|
#       a = a.sort
#       if array_increments_by?(words[0].length,a)
#         result << a[0]
#       end
#     end
#     return result
#   end
# end
#
# class String
#   def indices e
#     start, result = -1, []
#     result << start while start = (self.index e, start + 1)
#     result
#   end
# end
#
# def conca(ar)
#   r = ""
#   ar.each {|s| r+=s}
#   return r
# end
#
# def array_increments_by?(step, array)
#   sorted = array.sort
#   lastNum = sorted[0]
#   sorted[1, sorted.count].each do |n|
#     if lastNum + step != n
#       return false
#     end
#     lastNum = n
#   end
#   true
# end
#
# s = find_substring("barfoothefoobarman",["foo","bar"])



# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  len = words.length * words[0].length
  if s.length < len
    []
  else
    pattern = []
    result = []
    words.permutation(words.length).each {|s| pattern << conca(s)}
    pattern.uniq!
    for n in 0..s.length-len do
      temp = s[n..n+len-1]
      if pattern.include?(temp)
        result << n
      end
    end
    return result
  end
end

def conca(ar)
  r = ""
  ar.each {|s| r+=s}
  return r
end

s = find_substring("barfoothefoobarmanfoobarfoo",["foo","bar"])
#binding.pry
puts s
