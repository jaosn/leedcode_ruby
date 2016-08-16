
require "pry-byebug"
# class ListNode
#   attr_accessor :next, :val
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end
#
# node = ListNode.new(0)
# node.next= ListNode.new(1)
# node.next.next= ListNode.new(2)
# node.next.next.next= ListNode.new(3)
#
# node0 = node
# while node.next!=nil
#   node2 = node
#   node = node.next
# end
# node2.next = nil
# node = node0
# binding.pry
# puts "dadas"


def fib1(n)
  return [1] if n == 1
  return [1,1] if n == 2
  return helper(1,1,[1,1],n)
end


def helper(a,b,list,n)
  if list.length <= n-1
    temp = a + b
    list << temp
    helper(b,list.last,list,n)
  else
    return list
  end
end




# def fib2(n)
#   return [1] if n == 1
#   return [1,1] if n == 2
#   temp = [1,1]
#   for i in 2..n-2 do
#     temp[i] = temp[i-1] + temp[i-2]
#   end
#   return temp
# end

# puts fib1(10)
# t1 = Time.now
# fib1(200)
# t2 = Time.now
# t3 = Time.now
# fib2(200)
# t4 = Time.now
# fir = t2-t1
# sec = t4-t3
# puts fir
# puts sec


# def parseInt(str)
#   len = str.length
#   res = 0
#   for i in 0..len-1 do
#     current = str[len-1-i].to_i
#     res = res + current * ( 10 ** i)
#   end
#   return res
# end
#
# puts parseInt("444")

# Implement an exponent function (bonus: now try in log(n) time)

# def multiply(a,b)
#   return 0 if a == 0 || b == 0
#   (a<0 && b>0) || (a>0&&b<0) ? sign = false : sign = true
#   # puts sign
#   res = b.abs
#   for i in 1..a.abs-1 do
#     res += b.abs
#   end
#   sign == true ? (return res) : (return -res)
# end
#
# puts multiply(-2,5)

def permu(str)
  return helper(str,1,[str[0]])
end
def helper(str,n,list)
  if n <= str.length-1
    temp = []
    for i in 0..list.length-1 do
      for j in 0..list[i].length do
        current = list[i].dup.insert(j,str[n])
        # puts current
        temp << current
      end
    end
    helper(str,n+1,temp)
  else
    # binding.pry
    return list
  end
end

puts permu("").sort
