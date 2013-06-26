
def palindrome?(n)
  s = n.to_s
  s == s.reverse
end

ans = []
100.upto(999) {|x|
  x.upto(999) {|y|
    n = x*y
    ans << n if palindrome? n
  }
}
puts ans.max

