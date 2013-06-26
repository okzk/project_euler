
N = 1000

1.upto(N/3) {|a|
  a.upto((N - a)/2) {|b|
    c = N - a - b
    puts a*b*c if a*a + b*b == c*c
  }
}


