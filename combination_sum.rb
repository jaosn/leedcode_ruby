require 'pry-byebug'


# # not working
# # @param {Integer[]} candidates
# # @param {Integer} target
# # @return {Integer[][]}
# def combination_sum(candidates, target)
#   if candidates.length <= 0
#     return []
#   elsif candidates.min > target
#     return []
#   elsif
#     candis = get_validate(candidates,target)
#     remain = transform(candis)
#     results = recursive(candis,target,remain,[])
#     return results
#   end
# end
#
# def get_validate(candidates,target)
#   result = []
#   candidates.sort!.each do |can|
#     if can <= target
#       result << can
#     else
#       break
#     end
#   end
#   return result
# end
#
# def recursive(candidates,target,remain,result)
#   temp = []
#   if remain.length != 0
#     remain.each do |re|
#       sum_temp = sum(re)
#       if sum_temp > target
#         remain.delete(re)
#       elsif sum_temp == target
#         result << re
#       else
#         candidates.each do |ca|
#           re_dup = re.dup
#           re_dup << ca
#           re_dup.sort!
#           if !result.include?(re_dup)
#            temp << re_dup
#           end
#         end
#       end
#     end
#     recursive(candidates,target,temp,result)
#   else
#     return result
#   end
# end
#
# def sum(array)
#   result = 0
#   if array.length == 0
#     return 0
#   elsif array.length == 1
#     return array[0]
#   else
#     for i in 0..array.length-1 do
#       result += array[i]
#     end
#     return result
#   end
# end
#
# def transform(candidates)
#   temp = []
#   candidates.each {|c| temp << [c]}
#   return temp
# end
#
# candidates = [2,3,4,5,6,7]
# target = 12
# result = combination_sum(candidates,target)
# binding.pry
# puts "y"




# # works, but time ineffcient

# # @param {Integer[]} candidates
# # @param {Integer} target
# # @return {Integer[][]}
# def combination_sum(candidates, target)
#   if candidates.length <= 0
#     return []
#   elsif candidates.min > target
#     return []
#   elsif
#     candis = get_validate(candidates,target)
#     remain = transform(candis)
#     results = recursive(candis,target,remain,[])
#     return results
#   end
# end
#
# def get_validate(candidates,target)
#   result = []
#   candidates.sort!
#   if candidates[-1] <= target
#     return candidates
#   else
#     temp = 0
#     candidates.each_with_index do |ca,i|
#       if ca > target
#         temp = i
#         break
#       end
#     end
#     return candidates[0..temp-1]
#   end
# end
#
# def sum(array)
#   result = 0
#   if array.length == 0
#     return 0
#   elsif array.length == 1
#     return array[0]
#   else
#     for i in 0..array.length-1 do
#       result += array[i]
#     end
#     return result
#   end
# end
#
# def transform(candidates)
#   temp = []
#   candidates.each {|c| temp << [c]}
#   return temp
# end
#
# def recursive(can,tar,init,result)
#   if init.length == 0
#     return result
#   else
#     temp = []
#     init.each do |single|
#       sum = sum(single)
#       if sum == tar
#         single.sort!
#         if !result.include?(single)
#           result << single
#         end
#       elsif sum < tar
#         can.each do |ca|
#           s_d = single.dup
#           s_d << ca
#           s_d.sort!
#           if sum(s_d) <= tar && !temp.include?(s_d)
#             temp << s_d
#           end
#         end
#       end
#     end
#     recursive(can,tar,temp,result)
#   end
# end
#
# can = [92,71,89,74,102,91,70,119,86,116,114,106,80,81,115,99,117,93,76,77,111,110,75,104,95,112,94,73]
# tar = 310
# ca = get_validate(can,tar)
# init = transform(ca)
# re = recursive(ca,tar,init,[])
# binding.pry
# puts va


# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  if candidates.length <= 0
    return []
  elsif candidates.min > target
    return []
  elsif
    candis = get_validate(candidates,target)
    remain = transform(candis)
    results = recursive(candis,target,remain,[])
    return results
  end
end

def get_validate(candidates,target)
  result = []
  candidates.sort!
  if candidates[-1] <= target
    return candidates
  else
    temp = 0
    candidates.each_with_index do |ca,i|
      if ca > target
        temp = i
        break
      end
    end
    return candidates[0..temp-1]
  end
end

def sum(array)
  result = 0
  if array.length == 0
    return 0
  elsif array.length == 1
    return array[0]
  else
    for i in 0..array.length-1 do
      result += array[i]
    end
    return result
  end
end

def transform(candidates)
  temp = []
  candidates.each {|c| temp << [c]}
  return temp
end

def recursive(can,tar,init,result)
  if init.length == 0
    return result
  else
    temp = []
    init.each do |single|
      sum = sum(single)
      if sum == tar
        single.sort!
        if !result.include?(single)
          result << single
        end
      elsif sum < tar
        can.each do |ca|
          sum_temp = sum + ca
          if sum_temp <= tar
            s_d = single.dup
            s_d << ca
            s_d.sort!
            if !temp.include?(s_d)
              temp << s_d
            end
          end
        end
      end
    end
    recursive(can,tar,temp,result)
  end
end

can = [92,71,89,74,102,91,70,119,86,116,114,106,80,81,115,99,117,93,76,77,111,110,75,104,95,112,94,73]
tar = 310
ca = get_validate(can,tar)
init = transform(ca)
re = recursive(ca,tar,init,[])
binding.pry
puts va
