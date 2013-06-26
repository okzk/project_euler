
require 'prime'

def exponet_of_factor(val, factor)
  cnt = 0
  while val%factor == 0
    val /= factor
    cnt += 1
  end
  cnt
end



# n*(n+1)/2 の因数のうち、nとn+1は互いに素なので
# nが偶数の場合 三角数の約数は n/2 の約数の数と (n+1) の約数の数の積
# nが奇数の場合 三角数の約数は n の約数の数と (n+1)/2 の約数の数の積
# というのを利用。
# また約数を求めるのに必要な分だけ素数を少しずつ計算している。

gen = Prime::EratosthenesGenerator.new
primes = [gen.next]
divisors_num = [1]
n = 0
loop do
  n += 1
  primes << gen.next while primes.last < n
  if n.even?
    divisors_num << primes.inject(1){|r, p| r *= exponet_of_factor(n/2, p) + 1}
  else
    divisors_num << primes.inject(1){|r, p| r *= exponet_of_factor(n, p) + 1}
  end

  if divisors_num[n - 1]*divisors_num[n] >= 500
    puts n*(n-1)/2
    exit
  end
end


