
require "pry-byebug"
require 'mathn'

# Given n points on a 2D plane, find the maximum number of points that lie on the same straight line.

# Definition for a point.
class Point
    attr_accessor :x, :y
    def initialize(x=0, y=0)
        @x = x
        @y = y
    end
end

# works but time exceed limit
# @param {Point[]} points
# @return {Integer}
def max_points(points)
  if points.length == 0
    return 0
  elsif points.length == 1
    return 1
  else
    res = 0
    scope = []
    points.combination(2).to_a.each do |c|
      if c[0].x == c[1].x
        temp = 0
        for i in 0..points.length-1 do
          if points[i].x == c[0].x
            temp += 1
          end
        end
        if res <= temp then res = temp end
      elsif c[0].y == c[1].y
        temp = 0
        for i in 0..points.length-1 do
          if points[i].y == c[0].y
            temp += 1
          end
        end
        if res <= temp then res = temp end
      else
        m = (c[1].y-c[0].y) / (c[1].x-c[0].x)
        b = (c[0].x*c[1].y - c[1].x*c[0].y) / (c[0].x-c[1].x)
        temp = 0
        if !scope.include?([m,b])
          for i in 0..points.length-1 do
            if points[i].y == m * points[i].x + b
              temp += 1
            end
            if res <= temp
              # puts res
              # puts temp
              # puts c[0].x,c[0].y
              # puts c[1].x,c[1].y
              # puts "++++++"
              res = temp
              scope << [m,b]
            end
          end
        end
      end
    end
    return res
  end
end

# p1 = Point.new(1,3)
# p2 = Point.new(2,6)
# p3 = Point.new(3,9)
# ps = [p1,p2,p3]

# sample = [[0,9],[138,429],[115,359],[115,359],[-30,-102],[230,709],[-150,-686],[-135,-613],[-60,-248],[-161,-481],[207,639],[23,79],[-230,-691],[-115,-341],[92,289],[60,336],[-105,-467],[135,701],[-90,-394],[-184,-551],[150,774]]
sample = [[40,-23],[9,138],[429,115],[50,-17],[-3,80],[-10,33],[5,-21],[-3,80],[-6,-65],[-18,26],[-6,-65],[5,72],[0,77],[-9,86],[10,-2],[-8,85],[21,130],[18,-6],[-18,26],[-1,-15],[10,-2],[8,69],[-4,63],[0,3],[-4,40],[-7,84],[-8,7],[30,154],[16,-5],[6,90],[18,-6],[5,77],[-4,77],[7,-13],[-1,-45],[16,-5],[-9,86],[-16,11],[-7,84],[1,76],[3,77],[10,67],[1,-37],[-10,-81],[4,-11],[-20,13],[-10,77],[6,-17],[-27,2],[-10,-81],[10,-1],[-9,1],[-8,43],[2,2],[2,-21],[3,82],[8,-1],[10,-1],[-9,1],[-12,42],[16,-5],[-5,-61],[20,-7],[9,-35],[10,6],[12,106],[5,-21],[-5,82],[6,71],[-15,34],[-10,87],[-14,-12],[12,106],[-5,82],[-46,-45],[-4,63],[16,-5],[4,1],[-3,-53],[0,-17],[9,98],[-18,26],[-9,86],[2,77],[-2,-49],[1,76],[-3,-38],[-8,7],[-17,-37],[5,72],[10,-37],[-4,-57],[-3,-53],[3,74],[-3,-11],[-8,7],[1,88],[-12,42],[1,-37],[2,77],[-6,77],[5,72],[-4,-57],[-18,-33],[-12,42],[-9,86],[2,77],[-8,77],[-3,77],[9,-42],[16,41],[-29,-37],[0,-41],[-21,18],[-27,-34],[0,77],[3,74],[-7,-69],[-21,18],[27,146],[-20,13],[21,130],[-6,-65],[14,-4],[0,3],[9,-5],[6,-29],[-2,73],[-1,-15],[1,76],[-4,77],[6,-29]]
ps = []
sample.each do |s|
  ps << Point.new(s.first,s.last)
end
puts max_points(ps)
