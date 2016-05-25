
require "pry-byebug"

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  while p.next && q.next
    if p.val == q.val && p.left == q.left && p.right == q.right
      
  end
end

nd1 = TreeNode.new(1)
nd1.left = TreeNode.new(2)
nd1.right = TreeNode.new(3)

nd2 = nd1.dup
binding.pry
puts "y"
