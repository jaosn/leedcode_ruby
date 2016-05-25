
require "pry-byebug"

# @param {String} s
# @return {Boolean}
def is_valid(s)
  if !valid_p?(s)
    false
  elsif s.length == 0
    true
  else
    stack = []
    symbols = {"{" => "}", "(" => ")", "[" => "]"}
    s.split("").each do |c|
      if symbols.key?(c) then stack << c end
      if symbols.key(c) && symbols.key(c) != stack.pop then return false end
    end
    stack.empty?
  end
end

def valid_p?(s)
  /^[\{\}\[\]\(\)]{0,}$/ === s
end

puts is_valid("{{a}")
puts is_valid("{{}")
puts is_valid("{{a}}")
puts is_valid("{{}}")
