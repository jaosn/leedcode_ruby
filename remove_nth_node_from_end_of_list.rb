require "pry-byebug"


# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# # not efficient
# # @param {ListNode} head
# # @param {Integer} n
# # @return {ListNode}
# def remove_nth_from_end(head, n)
#   temp = ListNode.new(0)
#   temp.next = head
#   length = 0
#   first = head
#   while first != nil
#     length += 1
#     first = first.next
#   end
#   length -= n # find which one to delete from start to end
#   first = temp
#   while length > 0
#     length -= 1
#     first = first.next
#   end
#   first.next = first.next.next
#   return temp.next
# end

# not efficient
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  helper = ListNode.new(0)
  helper.next = head
  first,second = helper, helper
  for i in 0..n do
    first = first.next
  end
  while first != nil
    first = first.next
    second = second.next
  end
  second.next = second.next.next
  # binding.pry
  return helper.next
end




node = ListNode.new(0)
node.next= ListNode.new(1)
node.next.next= ListNode.new(2)
# node.next.next.next= ListNode.new(3)

remove_nth_from_end(node,1)
