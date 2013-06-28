
N = 200

$coins = [1, 2, 5, 10, 20, 50, 100, 200]
$memo = Array.new($coins.size){Array.new(N)}

def count(p, n)
  return $memo[p][n] if $memo[p][n]
  return 1 if n == 0
  return 1 if p == 0

  d = $coins[p]
  sum = 0;
  0.upto(n/d){|i|
    sum += count(p - 1, n - d*i)
  }
  $memo[p][n] = sum
  sum
end

puts count($coins.size - 1, N)


