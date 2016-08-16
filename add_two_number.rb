require "pry-byebug"

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def a_to_n(a)
  return nil if a == []
  node = ListNode.new(a[0])
  temp = node
  for i in 1..a.length-1 do
    node.next = ListNode.new(a[i])
    node = node.next
  end
  return temp
end

# # @param {ListNode} l1
# # @param {ListNode} l2
# # @return {ListNode}
# def add_two_numbers(l1, l2)
#     result = ListNode.new(0)
#     while l1 || l2 do
#       result.next = ListNode.new(0)
#       if l1 then temp1=l1.val else temp1=0 end
#       if l2 then temp2=l2.val else temp2=0 end
#       sum = temp1 + temp2
#       if sum < 10
#         result.val += sum
#       else
#         result.val += sum - 10
#         result.next.val += 1
#       end
#
#       if l1 != nil
#         if l1.next then l1 = l1.next else l1 = nil end
#       end
#       if l2 != nil
#         if l2.next then l2 = l2.next else l2 = nil end
#       end
#     end
#     swap = result
#     return result
# end
#
# l1 = ListNode.new(9)
# l1.next = ListNode.new(2)
# l2 = ListNode.new(8)
# r = add_two_numbers(l1,l2)
# binding.pry
# puts r

# def add_two_numbers(l1, l2)
#   str1, str2 = "", ""
#   while l1 != nil
#     str1 += l1.val.to_s
#     l1 = l1.next
#   end
#   while l2 != nil
#     str2 += l2.val.to_s
#     l2 = l2.next
#   end
#   sum = (str1.reverse.to_i + str2.reverse.to_i).to_s.reverse
#   res = ListNode.new(sum[0].to_i)
#   temp = res
#   for i in 1..sum.length-1 do
#     res.next = ListNode.new(sum[i].to_i)
#     res = res.next
#   end
#   # binding.pry
#   return temp
# end


def add_two_numbers(l1, l2)
  temp = (l1 == nil ? 0 : l1.val) + (l2 == nil ? 0 : l2.val)
  jump = temp <= 9 ? 0 : 1
  res = ListNode.new(jump == 1 ? temp - 10 : temp)
  res1 = res
  l1 = l1 == nil ? l1 : l1.next
  l2 = l2 == nil ? l2 : l2.next
  while l1 != nil || l2 != nil || jump == 1
    temp = (l1 == nil ? 0 : l1.val) + (l2 == nil ? 0 : l2.val) + jump
    jump = temp <= 9 ? 0 : 1
    res.next = ListNode.new(jump == 1 ? temp - 10 : temp)
    res = res.next
    l1 = l1 == nil ? l1 : l1.next
    l2 = l2 == nil ? l2 : l2.next
  end
  # res.next = ListNode.new(1) if jump == 1
  binding.pry
  return res1
end

n1 = a_to_n([1,8])
n2 = a_to_n([0])
add_two_numbers(n1,n2)

# a = ListNode.new(2)
# a.next = ListNode.new(4)
# a.next.next = ListNode.new(3)
#
#
# b = ListNode.new(5)
# b.next = ListNode.new(6)
# b.next.next = ListNode.new(4)
# add_two_numbers(a,b)
