
def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end

# 繰り返しで呼ばれるので、アンロールしておく
def length(n)
  return 1 if n < 10
  return 2 if n < 100
  return 3 if n < 1000
  return 4 if n < 10000
  return 5 if n < 100000
  return 6 if n < 1000000
  return 7 if n < 10000000
  return 8 if n < 100000000
  return 9 if n < 1000000000
  return length(n/1000000000) + 9
end


product = 1
targets = [1, 10, 100, 1000, 10000, 100000, 1000000]
target = targets.shift
pos = 0

1.upto(1000000) {|n|
  pos += length(n)
  if pos >= target
    product *= to_digits(n)[pos - target]
    target = targets.shift
    break unless target
  end
}

puts product
