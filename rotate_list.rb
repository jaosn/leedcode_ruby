
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
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)

end

def create_list(num)
  node = ListNode.new(0)
  k = 0
  while k <= num
  end
  return node
end

sample = create_list(5)
binding.pry
puts "1"
