
sum = 0
500000.times {|i|
  n = i*2 + 1
  s10 = n.to_s
  next unless s10 == s10.reverse
  s2 = sprintf("%b", n)
  next unless s2 == s2.reverse
  sum += n
}

puts sum
