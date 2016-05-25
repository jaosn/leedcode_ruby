require "pry-byebug"

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    if s == nil then return nil end
    if s.length <= num_rows
        return s
    elsif num_rows * 2 - 2 == 0
        return s
    else
        num = num_rows * 2 - 2 # single pattern numbers of string
        direct = num_rows
        invers = num - num_rows
        result = Array.new(num_rows) {|single| single=""}
        #binding.pry
        for n in 0..s.length-1 do
          reminder = n % num  # single part
          if reminder.between?(0,num_rows-1)
            result[reminder] += s[n]
          else
            result[num - reminder] += s[n]
          end
        end
        #binding.pry
        output = ""
        result.each {|single| output +=single}
        #binding.pry
        return output
    end
end

sample = "PAYPALISHIRING"
#binding.pry
output = convert(sample,3)
puts output
