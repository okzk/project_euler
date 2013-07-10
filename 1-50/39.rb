
max_n = nil
max_c = 0


# a < b < c として単純にループを回しているが、数秒かかる。
 
3.upto(1000) {|n|
  count = 0
  1.upto(n/3) {|a|
    (a+1).upto((n-a)/2) {|b|
      c = n - a - b
      count += 1 if a*a + b*b == c*c
    }
  }
  if count > max_c
    max_n = n
    max_c = count
  end
}

puts max_n
