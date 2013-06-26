require 'prime'

N = 10000
$primes = Prime.each(N).to_a

def exponet_of_factor(val, factor)
  cnt = 0
  while val%factor == 0
    val /= factor
    cnt += 1
  end
  cnt
end

def sum_of_proper_divisors(n)
  $primes.take_while{|p| p <= n}.inject(1){|r, p|
    exp = exponet_of_factor(n, p)
    r *=  (p**(exp + 1) - 1)/(p - 1)
  } - n
end

ret = [0]
1.upto(N) {|n| ret << sum_of_proper_divisors(n)}

sum = 0
1.upto(N){|n| sum += n if n != ret[n] && n == ret[ret[n]]}
puts sum
