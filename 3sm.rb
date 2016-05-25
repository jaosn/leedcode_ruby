require "pry-byebug"

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  if nums.length <= 2
    []
  else
    filter = []
    results = []
    all_char = nums.uniq
    all_char.each do |single|
      if nums.count(single) >= 3
        3.times {|n| filter << single}
      elsif nums.count(single) == 2
        2.times {|n| filter << single}
      else
        filter << single
      end
    end
    filter.combination(3) {|n| if n[0]+n[1]+n[2] == 0 then results << n.sort end}
    return results.uniq
  end
end

sample = [-1,1,0,1,2,-2]
r = three_sum(sample)
binding.pry
puts r
