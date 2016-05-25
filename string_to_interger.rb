require "pry-byebug"
# @param {String} str
# @return {Integer}
def my_atoi(str)
  clean = str.split(" ")[0]
  if clean == nil || clean[1] == "+" || clean[1] == "-" || clean[0] =~ /[[:alpha:]]/ ||
    ((clean[0] == "+" || clean[0] == "-") && clean[1] =~ /[[:alpha:]]/)
    0
  else
    value = clean[/\d+/].to_i
    #binding.pry

    if clean[0] == "-"
      if value <= 2147483647 then -value else -2147483648 end
    else
      if value <= 2147483647 then value else 2147483647 end
    end
  end
end

sample = "  +b12102370352"
puts my_atoi(sample)
