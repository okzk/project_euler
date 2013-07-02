require 'prime'

def left_truncatable_prime?(p)
  while p > 0
    return false unless p.prime?
    p/=10
  end

  return true
end

digits = [1, 2, 3, 5, 7, 9]

result = []
n = [3, 7]

1.upto(11) {|i|
  n = digits.product(n).map{|a| a[0]*(10**i) + a[1]}.select{|n| n.prime?}
  n.each{|p| result << p if left_truncatable_prime? p}

  break if n.empty?
  break if result.size >= 11
}
puts result.inject(:+)

