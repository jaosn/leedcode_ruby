require "pry-byebug"


# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  if nlen(head) <= n
    head.next
  else
    remain = nlen(head) - n
    if n == 1
    end

  end
end

def nlen(node)
  l = 0
  while node
    l += 1
    node = node.next
  end
  return l
end



node = ListNode.new(0)
node.next= ListNode.new(1)
node.next.next= ListNode.new(2)
node.next.next.next= ListNode.new(3)
puts nlen(node)

puts nlen(del_last(node))
