
sum = 0
n = [1, 2]

while n[0] < 4000000
  sum += n[0] if n[0].even?
  n << n.shift + n.last
end

puts sum


