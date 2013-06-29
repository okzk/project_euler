
def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end

factorials = [1]
1.upto(9) {|i| factorials << factorials.last*i}

# 上界の桁数を求める(このやり方では上界が大きすぎて時間がかかる)
n = 1
n += 1 until factorials[9]*n <= 10**n

puts 3.upto(factorials[9]*n).select{|num|
  num == to_digits(num).inject(0){|r, i| r += factorials[i]}
}.inject(:+)
