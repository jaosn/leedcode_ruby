require "pry-byebug"

# # @param {Integer[]} nums
# # @return {Integer[][]}
# def three_sum(nums)
#   if nums.length <= 2
#     []
#   else
#     filter = []
#     results = []
#     for n in 0..nums.length-3 do
#       for m in n+1..nums.length-2 do
#         for k in m+1..nums.length-1 do
#           if nums[n] + nums[m] + nums[k] == 0
#             temp = [nums[n],nums[m],nums[k]].sort
#             if !results.include?(temp)
#               results << temp
#             end
#           end
#         end
#       end
#     end
#     return results
#   end
# end

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  if nums.length <= 2
    []
  else
    char = nums.uniq.sort
    result = []
    temp = char.dup

    if char.include?(0)&&nums.count(0)>=3
      result << [0,0,0]
    end

    #binding.pry
    char.each do |n|
      if nums.count(n) >= 2
        temp << n
      end
    end
    char.combination(2).each do |com|
      t = temp.dup
      com.each {|c| t.delete_at(t.index(c) || t.length)}
      offset = 0 - com[0] - com[1]
      if t.include?(offset)
        poten = [offset,com[0],com[1]].sort
        if !result.include?(poten)
          result << poten
        end
      end
    end
    return result
  end
end

s = [-1,0,1,2,-1,-4]
t = three_sum(s)
binding.pry
puts t
