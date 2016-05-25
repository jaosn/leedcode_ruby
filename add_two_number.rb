require "pry-byebug"

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    result = ListNode.new(0)
    while l1 || l2 do
      result.next = ListNode.new(0)
      if l1 then temp1=l1.val else temp1=0 end
      if l2 then temp2=l2.val else temp2=0 end
      sum = temp1 + temp2
      if sum < 10
        result.val += sum
      else
        result.val += sum - 10
        result.next.val += 1
      end

      if l1 != nil
        if l1.next then l1 = l1.next else l1 = nil end
      end
      if l2 != nil
        if l2.next then l2 = l2.next else l2 = nil end
      end
    end
    swap = result
    return result
end

l1 = ListNode.new(9)
l1.next = ListNode.new(2)
l2 = ListNode.new(8)
r = add_two_numbers(l1,l2)
binding.pry
puts r
