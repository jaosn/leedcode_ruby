
require "pry-byebug"

# Count the number of prime numbers less than a non-negative number, n.

require "prime"
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  count = 0
  Prime.each(n-1) do |prime|
    count += 1
  end
  return count
end

puts count_primes(2)
