
require 'pry-byebug'


# Definition for an interval.
class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

# @param {Interval[]} intervals
# @return {Interval[]}
def merge(intervals)
  if intervals.length <= 1
    intervals
  else
    temp = []
    intervals.each do |it|
      for i in it.start..it.end do
        if !temp.include?(i)
          temp << i
        end
      end
    end
    temp.sort!
    binding.pry
  end
end

it1 = Interval.new(1,4)
it2 = Interval.new(7,9)
it3 = Interval.new(2,6)
it4 = Interval.new(8,11)
# [[10,12],[1,4],[2,9]]
sample = [it4,it2,it3,it1]
t = merge(sample)
# binding.pry
puts "ye"
