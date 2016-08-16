
require "pry-byebug"

# # 27.7%
# # @param {Float} x
# # @param {Integer} n
# # @return {Float}
# def my_pow(x, n)
#   if x == 0
#     if n >= 0 then return 0 else return "Inf" end
#   else
#     return x ** n
#   end
# end


# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  return 1 if n == 0
  return x if n == 1
  temp = n.to_s(2)
  res = 1
  subres = x
  # binding.pry
  for i in 0..temp.length-1 do
    if temp[i] == "1"
      for j in 0..temp.length-1-i-1 do
        subres *= subres
        # binding.pry
      end
      # binding.pry
      res = res * subres
      # puts res
      subres = x
    end
  end
  return res
end

puts my_pow(5,4)
