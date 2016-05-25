
require "pry-byebug"
class ListNode
  attr_accessor :next, :val
  def initialize(val)
    @val = val
    @next = nil
  end
end

node = ListNode.new(0)
node.next= ListNode.new(1)
node.next.next= ListNode.new(2)
node.next.next.next= ListNode.new(3)

node0 = node
while node.next!=nil
  node2 = node
  node = node.next
end
node2.next = nil
node = node0
binding.pry
puts "dadas"
