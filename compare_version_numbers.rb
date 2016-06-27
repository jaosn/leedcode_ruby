
require "pry-byebug"

# Compare two version numbers version1 and version2.
# If version1 > version2 return 1, if version1 < version2 return -1, otherwise return 0.
#
# You may assume that the version strings are non-empty and contain only digits and the . character.
# The . character does not represent a decimal point and is used to separate number sequences.
# For instance, 2.5 is not "two and a half" or "half way to version three",
#   it is the fifth second-level revision of the second first-level revision.
#
# Here is an example of version numbers ordering:
#
# 0.1 < 1.1 < 1.2 < 13.37

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  one, two = version1.split("."), version2.split(".")
  l1, l2 = one.length, two.length
  if l1 > l2
    (l1-l2).times do
      two << "0"
    end
  elsif l1 < l2
    (l2-l1).times do
      one << "0"
    end
  end
  for i in 0..one.length-1 do
    if one[i].to_i > two[i].to_i
      return 1
    elsif one[i].to_i < two[i].to_i
      return -1
    end
  end
  return 0
end

v1 = "01.1.2.3"
v2 = "1.2"

puts compare_version(v1,v2)
