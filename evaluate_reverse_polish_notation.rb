
require "pry-byebug"

# Evaluate the value of an arithmetic expression in Reverse Polish Notation.
#
# Valid operators are +, -, *, /. Each operand may be an integer or another expression.
#
# Some examples:
#   ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
#   ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  if tokens.length == 0
    return nil
  elsif tokens.length <= 2
    if check?(tokens)
      remove_operations(tokens)
      return tokens.last.to_i
    else
      return tokens.last.to_i
    end
  else
    temp = []
    for i in 0..tokens.length-1 do
      if tokens[i] == "-" || tokens[i] == "+" || tokens[i] == "*" || tokens[i] == "/"
        if temp.length >= 2
          temp2 = temp.pop
          temp1 = temp.pop
          # binding.pry
          if tokens[i] == "-"
            temp << temp1 - temp2

          elsif tokens[i] == "+"
            temp << temp1 + temp2
          elsif tokens[i] == "*"
            temp << (temp1.to_f * temp2).to_i
          else
            temp << (temp1.to_f / temp2).to_i
          end
        end
      else
        temp << tokens[i].to_i
      end
    end
    # binding.pry
    return temp.last
  end
end

def check?(t)
  if t.include?("+") || t.include?("-") || t.include?("*") || t.include?("/")
    return true
  else
    return false
  end
end

def remove_operations(a)
  a.delete("+")
  a.delete("-")
  a.delete("*")
  a.delete("/")
  return a
end

puts eval_rpn(["10","6","9","3","+","-11","*","/","*","17","+","5","+"])
