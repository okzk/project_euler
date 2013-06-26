
N = 1000000
$collatz_len_memo = Array.new(N + 1)
$collatz_len_memo[0] = 0
$collatz_len_memo[1] = 1

def next_collatz(n)
  if n.even?
    n/2
  else
    n*3 + 1
  end
end

def collatz_length(n)
  return $collatz_len_memo[n] if n<=N && $collatz_len_memo[n]

  len = collatz_length(next_collatz(n)) + 1
  $collatz_len_memo[n] = len if n <= N
  return len
end

max = 0
max_n = nil
1.upto(N) {|n|
  len = collatz_length(n)
  if len > max
    max = len
    max_n = n
  end
}

puts max_n
