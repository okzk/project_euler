
$fifth_pow = Array.new(10){|i| i**5}

def digits_fifth_pow_sum(n)
  sum = 0
  while n > 0
    sum += $fifth_pow[n%10]
    n /= 10
  end
  sum
end


# 上界をざっくり計算
n = 1
n += 1 while 10**(n+1) < $fifth_pow[9]*n

sum = 0
2.upto($fifth_pow[9]*n) {|n|
  sum += n if n == digits_fifth_pow_sum(n)
}

puts sum

