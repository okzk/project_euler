
N = 1001

sum = 1
n = 1
((N - 1)/2).times {|i|
  4.times {
    n += (i+1)*2
    sum += n
  }
}

p sum
