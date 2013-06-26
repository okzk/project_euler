
require 'prime'

def prime_seq_len(a, b)
  n = 0;
  n += 1 while (n*n + a*n + b).prime? 
  n
end


len_max = 0
a_max = nil
b_max = nil

# n = 0 よりbは素数
Prime.each(1000){|b|
  # n = 1 より a > -b
  (1 - b).upto(1000 - 1){|a|
    len = prime_seq_len(a, b)
    if len > len_max
      len_max = len
      a_max = a
      b_max = b
    end
  }
}

puts a_max*b_max

