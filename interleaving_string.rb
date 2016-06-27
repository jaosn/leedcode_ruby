
require "pry-byebug"

# Given s1, s2, s3, find whether s3 is formed by the interleaving of s1 and s2.
#
# For example,
# Given:
# s1 = "aabcc",
# s2 = "dbbca",
#
# When s3 = "aadbbcbcac", return true.
# When s3 = "aadbbbaccc", return false.


# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  if s1.length + s2.length != s3.length
    return fasle
  else
    for i in 0..s1.length-1 do
      a = (0 ... s3.length).find_all { |i| s3[i,1] == s1[i] }
    end
  end
end

s1 = "aabcc"
s2 = "dbbca"
s3 = "aadbbcbcac"
is_interleave(s1,s2,s3)
