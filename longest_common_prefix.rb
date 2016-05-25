require "pry-byebug"
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  if strs.length == 0
    ""
  elsif strs.length == 1
    strs[0]
  else
    temp = ""
    sorted_strs = strs.sort_by {|s| s.length}
    base = sorted_strs[0]
    for n in 0..base.length-1 do
      count = 1
      sorted_strs[1..strs.length-1].each do |single|
        if single[n] == base[n]
          count += 1
        end
      end
      if count == strs.length
        temp += base[n]
      else
        break
      end
    end
    return temp
  end
end

sample = ["ab","aab","aabb","aac"]
puts longest_common_prefix(sample)
