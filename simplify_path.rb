
require "pry-byebug"

# # 33 %
# # @param {String} path
# # @return {String}
# def simplify_path(path)
#   res = []
#   array = to_array(path)
#   array.delete("/")
#   array.delete("/.")
#   array.each do |a|
#     if a != "/.."
#       res << a
#     elsif a == "/.."
#       if res.length != 0
#         res.pop
#       end
#     end
#   end
#   if res.length == 0
#     return "/"
#   else
#     return res.join
#   end
# end
#
# def to_array(path)
#   res = []
#   for i in 0..path.length-1 do
#     if path[i] == "/"
#       temp = "/"
#       nxt = i + 1
#       while path[nxt] != "/" && nxt <= path.length-1
#         temp += path[nxt].to_s
#         nxt += 1
#       end
#       res << temp
#     end
#   end
#   return res
# end
#
# # sample = "/a/./b/../../c/"
# sample = "////a/./../b/c/../"
# t = simplify_path(sample)
# puts t


# # 33 %
# # @param {String} path
# # @return {String}
# def simplify_path(path)
#   res = []
#   for i in 0..path.length-1 do
#     if path[i] == "/"
#       temp = "/"
#       nxt = i + 1
#       while path[nxt] != "/" && nxt <= path.length-1
#         temp += path[nxt].to_s
#         nxt += 1
#       end
#       if temp != "/." && temp != "/"
#         if temp != "/.."
#           res << temp
#         elsif temp == "/.."
#           if res.length != 0
#             res.pop
#           end
#         end
#       end
#     end
#   end
#   if res.length == 0
#     return "/"
#   else
#     return res.join
#   end
# end
#
# # sample = "/a/./b/../../c/"
# sample = "////a/./../b/c/../../../"
# t = to_array(sample)
# puts t


# 66 %
# @param {String} path
# @return {String}
def simplify_path(path)
  res = []
  ar = path.split("/")
  ar.each do |a|
    if a != "" && a != "."
      if a != ".."
        res << a
      elsif a == ".."
        if res.length != 0
          res.pop
        end
      end
    end
  end
  if res.length == 0
    return "/"
  else
    return "/"+res.join("/")
  end
end

# sample = "/a/./b/../../c/"
sample = "////a/./../b/c/../"
t = simplify_path(sample)
puts t
