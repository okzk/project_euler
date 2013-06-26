
N = 1000

n = N - 1

t = n/3
sum = t*(t+1)/2*3

t = n/5
sum += t*(t+1)/2*5

t = n/15
sum -= t*(t+1)/2*15

puts sum

