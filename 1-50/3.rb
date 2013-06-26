
n = 600851475143 

2.upto(n) {|i|
  if n%i == 0
    n /= i while n%i == 0
    if n == 1
      puts i
      break
    end
  end
}