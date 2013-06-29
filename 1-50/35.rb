
require 'prime'

$primes = Prime.each(1000000).to_a

def $primes.bsearch(p)
  s = 0
  len = size

  while true
    m = s + len/2
    return m if self[m] == p
    return nil if m == s
    if self[m] < p
      s = m + 1
      len = (len - 1)/2
    else
      len = len/2
    end
  end
end

def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end

def circular_prime?(p)
  digs = to_digits(p)
  (digs.size - 1).times {
    digs.rotate!
    return false unless $primes.bsearch(digs.reverse.inject(0){|r, d| r = r*10 + d})
  }
  return true
end

puts $primes.count{|p| circular_prime? p}
