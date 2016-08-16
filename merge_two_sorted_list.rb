
require "pry-byebug"

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# 93.10%
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 == nil ? l2 : l1 if l1 == nil || l2 == nil
  if l1.val < l2.val
    temp = l1
    l1 = l1.next
  else
    temp = l2
    l2 = l2.next
  end
  res = temp
  while l1 != nil && l2 != nil
    if l1.val < l2.val
      res.next = l1
      l1 = l1.next
    else
      res.next = l2
      l2 = l2.next
    end
    res = res.next
  end
  if (l1 == nil) then res.next = l2 end
  if (l2 == nil) then res.next = l1 end
  return temp
end

# 93.10%
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 == nil ? l2 : l1 if l1 == nil || l2 == nil
  if l1.val < l2.val
    head = l1
    head.next = merge_two_lists(l1.next,l2)
  else
    head = l2
    head.next = merge_two_lists(l1,l2.next)
  end
  return head
end
