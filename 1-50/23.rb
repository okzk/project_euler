require 'prime'

N = 28123
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

# 以下、実行すると結構時間がかかる。
abundant_numbers = []
1.upto(N) {|n| abundant_numbers << n if sum_of_proper_divisors(n) > n}

tmp = {}
abundant_numbers.repeated_combination(2).map{|a|
  s = a[0] + a[1]
  tmp[s] = 1 if s <= N
}

puts N*(N + 1)/2 - tmp.keys.inject(:+)

