
f = [1, 1]
n = 1
test = 10**(1000 - 1)

until f[0] >= test
  f << f.shift + f.last
  n += 1
end

puts n
