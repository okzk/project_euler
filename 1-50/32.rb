
def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end

pan = []
digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# 1文字ずつ使うには、2桁*3桁 = 4桁, もしくは1桁*4桁 = 4桁である必要がある
# とりあえず、5桁分を列挙して、2桁*3桁と1桁*4桁でチェックを行う。
digits.permutation(5){|a|
  rest = digits - a

  # 2桁x3桁 = 4桁の場合
  x = a[0]*10 + a[1]
  y = a[2]*100 + a[3]*10 + a[4]
  z = x * y
  pan << z if z < 10000 && (rest & to_digits(z)).size == 4

  # 1桁x4桁 = 4桁の場合
  x = a[0]
  y = a[1]*1000 + a[2]*100 + a[3]*10 + a[4]
  z = x * y
  pan << z if z < 10000 && (rest & to_digits(z)).size == 4
}
puts pan.uniq.inject(:+)



