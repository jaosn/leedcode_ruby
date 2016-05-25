require "pry-byebug"
# # beats 44%
# # @param {String[]} strs
# # @return {String[][]}
# def group_anagrams(strs)
#   hash = {}
#   strs.sort!
#   for i in 0..strs.length-1 do
#     hash[i] = to_array(strs[i])
#   end
#   result = hash.safe_invert.values
#   result.each_with_index do |tt,i|
#     tt.each_with_index do |t,j|
#       result[i][j] = strs[t]
#     end
#   end
#   return result
# end
#
# def to_array(string)
#   result = []
#   if string.length > 0
#     for i in 0..string.length-1 do
#       result << string[i]
#     end
#     return result.sort
#   else
#     return [""]
#   end
# end
#
# class Hash
#   def safe_invert
#     self.each_with_object({}){|(k,v),o|(o[v]||=[])<<k}
#   end
# end
#
# sample = "abcdef"
# # sample2 = ["eat", "tea", "tan", "ate", "nat", "bat"]
# sample2 = ["","sample","","sample","sampel"]
# hash = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
# re = group_anagrams(sample2)
# binding.pry
# puts to_array(sample)
#

# # beats 53%
# # @param {String[]} strs
# # @return {String[][]}
# def group_anagrams(strs)
#   hash = {}
#   temp = []
#   strs.sort!
#   for i in 0..strs.length-1 do
#     temp << to_array(strs[i])
#   end
#   temp.each_with_index do |t,i|
#     if !hash.key?(t)
#       hash[t] = [strs[i]]
#     else
#       hash[t] << strs[i]
#     end
#   end
#   return hash.values
# end
#
# def to_array(string)
#   result = []
#   if string.length > 0
#     for i in 0..string.length-1 do
#       result << string[i]
#     end
#     return result.sort
#   else
#     return [""]
#   end
# end
#
# sample = "abcdef"
# # sample2 = ["eat", "tea", "tan", "ate", "nat", "bat"]
# sample2 = ["","sample","","sample","sampel","new","wen"]
# hash = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
# re = group_anagrams(sample2)
# binding.pry
# puts to_array(sample)

# # beats 66%
# # @param {String[]} strs
# # @return {String[][]}
# def group_anagrams(strs)
#   result = []
#   temp = []
#   hash = {}
#   strs.sort!
#   for i in 0..strs.length-1 do
#     temp << strs[i].chars.sort
#   end
#   temp.each_with_index do |t,i|
#     if !hash.key?(t)
#       hash[t] = [strs[i]]
#     else
#       hash[t] << strs[i]
#     end
#   end
#   return hash.values
# end
#
#
# sample = "abcdef"
# # sample2 = ["eat", "tea", "tan", "ate", "nat", "bat"]
# sample2 = ["","sample","","sample","sampel","new","wen"]
# hash = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
# re = group_anagrams(sample2)
# binding.pry
# puts to_array(sample)


# # beats 53.3%
# # @param {String[]} strs
# # @return {String[][]}
# def group_anagrams(strs)
#   result = []
#   hash = {}
#   strs.sort!
#   for i in 0..strs.length-1 do
#     temp = strs[i].chars.sort
#     if !hash.key?(temp)
#       hash[temp] = [strs[i]]
#     else
#       hash[temp] << strs[i]
#     end
#   end
#   return hash.values
# end



# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = []
  compare = []
  strs.sort!
  for i in 0..strs.length-1 do
    temp = strs[i].chars.sort
    if !compare.include?(temp)
      compare << temp
      index = compare.index(temp)
      result[index] = [strs[i]]
    else
      index = compare.index(temp)
      result[index] << strs[i]
    end
  end
  return result
end

sample = "abcdef"
# sample2 = ["eat", "tea", "tan", "ate", "nat", "bat"]
sample2 = ["","sample","","sample","sampel","new","wen"]
hash = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
re = group_anagrams(sample2)
binding.pry
puts to_array(sample)
