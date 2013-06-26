
N = 1000000

digits = (0..9).to_a

factorials = [1]
digits.size.times{|i| factorials << factorials.last*(i+1)}



n = N - 1
ans = []
while digits.size > 0
  i = n/factorials[digits.size - 1]
  n %= factorials[digits.size - 1]

  ans << digits.delete_at(i)
end

puts ans.map{|i| i.to_s}.join
